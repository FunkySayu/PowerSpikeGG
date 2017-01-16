import json
import os
import unittest

from powerspikegg.rawdata.fetcher import converter
from powerspikegg.rawdata.lib.python import static
from powerspikegg.rawdata.public import constants_pb2

class ConverterEndToEndTest(unittest.TestCase):
    """Checks if the converter support the conversion of a match.

    Sample data are extracted from the Riot API.
    """

    MATCH_SAMPLE = "match.json"

    def setUp(self):
        """Read the file in memory and load a fake converter.
        """
        this_dir = os.path.dirname(os.path.abspath(__file__))
        sample_path = os.sep.join([this_dir, "samples", self.MATCH_SAMPLE])

        with open(sample_path) as f:
            self.data = json.load(f)

        # TODO(funkysayu) for future work, this should use a MagicMock.
        self.converter = converter.JSONConverter(None)

    def _check_damage_data(self, damage, json_stats, prefix):
        """Test if a damage is correctly generated.

        Parameters:
            damage: DamageStatistic message generated from the converter.
            json_stats: original player statistics
            prefix: damage prefix (magic, physical, true or total)
        """
        self.assertEqual(damage.total, json_stats[prefix + "DamageDealt"])
        self.assertEqual(damage.to_champions,
            json_stats[prefix + "DamageDealtToChampions"])
        self.assertEqual(damage.taken, json_stats[prefix + "DamageTaken"])

    def _check_participant(self, participant):
        """Test if a participant is correctly constructed.

        Parameters:
            participant: A participant generated from the converter
        """
        json_participant = next((p for p in self.data["participants"]
            if p["participantId"] == participant.id), None)
        self.assertIsNotNone(json_participant)

        json_identity = next((i for i in self.data["participantIdentities"]
            if i["participantId"] == participant.id), None)
        self.assertIsNotNone(json_identity)

        # Participant
        self.assertEqual(participant.summoner.id,
            json_identity["player"]["summonerId"])
        self.assertEqual(participant.summoner.name,
            json_identity["player"]["summonerName"])
        # TODO(funkysayu) test the summoner spells once it is supported.
        # TODO(funkysayu) test items once it is supported.

        # PlayerStatistics
        stats = participant.statistics
        json_stats = json_participant["stats"]
        self.assertEqual(stats.kills, json_stats["kills"])
        self.assertEqual(stats.deaths, json_stats["deaths"])
        self.assertEqual(stats.assists, json_stats["assists"])
        self.assertEqual(stats.champion_level, json_stats["champLevel"])
        self.assertEqual(stats.total_heal, json_stats["totalHeal"])
        self.assertEqual(stats.largest_critical_strike,
            json_stats["largestCriticalStrike"])
        self.assertEqual(stats.gold_earned, json_stats["goldEarned"])
        self.assertEqual(stats.gold_spent, json_stats["goldSpent"])
        self.assertEqual(stats.minions_killed, json_stats["minionsKilled"])
        self.assertEqual(stats.neutral_minions_killed,
            json_stats["neutralMinionsKilled"])
        self.assertEqual(stats.neutral_minions_killed_ennemy_jungle,
            json_stats["neutralMinionsKilledEnemyJungle"])
        self.assertEqual(stats.neutral_minions_killed_team_jungle,
            json_stats["neutralMinionsKilledTeamJungle"])
        self.assertEqual(stats.vision_wards_bought,
            json_stats["visionWardsBoughtInGame"])
        self.assertEqual(stats.wards_placed, json_stats["wardsPlaced"])
        self.assertEqual(stats.wards_killed, json_stats["wardsKilled"])
        self.assertEqual(stats.double_kills, json_stats["doubleKills"])
        self.assertEqual(stats.triple_kills, json_stats["tripleKills"])
        self.assertEqual(stats.quadra_kills, json_stats["quadraKills"])
        self.assertEqual(stats.penta_kills, json_stats["pentaKills"])
        self.assertEqual(stats.unreal_kills, json_stats["unrealKills"])
        self.assertEqual(stats.killing_sprees, json_stats["killingSprees"])
        self.assertEqual(stats.largest_killing_spree,
            json_stats["largestKillingSpree"])
        self.assertEqual(stats.largest_multi_kill,
            json_stats["largestMultiKill"])
        self.assertEqual(stats.inhibitor_kills, json_stats["inhibitorKills"])
        self.assertEqual(stats.tower_kills, json_stats["towerKills"])
        self.assertEqual(stats.first_blood_assist,
            json_stats["firstBloodAssist"])
        self.assertEqual(stats.first_blood_kill,
            json_stats["firstBloodKill"])
        self.assertEqual(stats.first_inhibitor_kill,
            json_stats["firstInhibitorKill"])
        self.assertEqual(stats.first_tower_assist,
            json_stats["firstTowerAssist"])
        self.assertEqual(stats.first_tower_kill,
            json_stats["firstTowerKill"])

        damage_data_with_prefix = [
            (stats.magic_damages, "magic"),
            (stats.physical_damages, "physical"),
            (stats.true_damages, "true"),
            (stats.total_damages, "total")
        ]

        for damage_data, prefix in damage_data_with_prefix:
            self._check_damage_data(damage_data, json_stats, prefix)

    def _check_team(self, team):
        """Test if a team is correctly constructed.

        Parameters:
            team: a TeamDetail message.
        """
        self.assertIsNotNone(team.id)

        # Get the corresponding json
        json_team = next((t for t in self.data["teams"]
            if t["teamId"] == team.id), None)
        self.assertIsNotNone(json_team)

        # TeamDetail message checking
        self.assertEqual(team.winner, json_team["winner"])
        # TODO(funkysayu) add banned champions once supported.
        self.assertEqual(team.baron_kills, json_team["baronKills"])
        self.assertEqual(team.dragon_kills, json_team["dragonKills"])
        self.assertEqual(team.tower_kills, json_team["towerKills"])
        self.assertEqual(team.first_baron, json_team["firstBaron"])
        self.assertEqual(team.first_dragon, json_team["firstDragon"])
        self.assertEqual(team.first_blood, json_team["firstBlood"])
        self.assertEqual(team.first_tower, json_team["firstTower"])
        self.assertEqual(team.first_inhibitor, json_team["firstInhibitor"])
        self.assertEqual(team.first_rift_herald, json_team["firstRiftHerald"])

        # Get the participants
        self.assertEqual(len(team.participants), 5)

        for participant in team.participants:
            self._check_participant(participant)

    def test_end_to_end(self):
        """Test the conversion on the sample, and check all fields.
        """
        # MatchReference
        reference = self.converter.json_match_to_match_pb(self.data)
        self.assertEqual(reference.id, self.data["matchId"])
        self.assertEqual(reference.timestamp, self.data["matchCreation"])
        self.assertEqual(reference.version, self.data["matchVersion"])
        self.assertEqual(reference.plateform_id, self.data["platformId"])
        self.assertEqual(reference.region,
            constants_pb2.Region.Value(self.data["region"]))
        self.assertEqual(reference.queue_type,
            constants_pb2.QueueType.Value(self.data["queueType"]))
        self.assertEqual(reference.season,
            constants_pb2.Season.Value(self.data["season"]))

        # MatchDetail
        detail = reference.detail
        self.assertEqual(detail.map, static.get_map_from_id(self.data["mapId"]))
        self.assertEqual(detail.duration, self.data["matchDuration"])
        self.assertEqual(len(detail.teams), 2)

        self._check_team(detail.teams[0])
        self._check_team(detail.teams[1])


if __name__ == "__main__":
    unittest.main()