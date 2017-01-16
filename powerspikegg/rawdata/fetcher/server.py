import gflags
import grpc
import logging
import riotwatcher
import sys
import time
import threading

from concurrent import futures

from powerspikegg.rawdata.public import match_pb2
from powerspikegg.rawdata.public import constants_pb2
from powerspikegg.rawdata.fetcher import converter
from powerspikegg.rawdata.fetcher import handler
from powerspikegg.rawdata.fetcher import service_pb2


"""
Match fetcher. Find match informations based on search query.
"""


FLAGS = gflags.FLAGS

gflags.DEFINE_string("riot_api_token", "", "token used to reach the Riot API")
gflags.DEFINE_integer("port", 50001, "port on which the server will listen")
gflags.DEFINE_integer("max_workers", 10,
    "number of threads handling the requests")


class ServerError(Exception):
    """Exception raised when an error is send from the Riot API.
    """


class MatchFetcher(service_pb2.MatchFetcherServicer):
    """Implementation of the MatchFetcher service.

    Automatically fetch match from the Riot API based on a query semantic or a
    unique query (for example, getting a match from its ID). Since match are
    static entities, results are cached in a database to avoid API key
    invalidation due to rate-limitation.
    """

    def __init__(self, riot_api_token):
        """Constructor. Instantiate a Riot API handler.

        Parameters:
            riot_api_token: Argparser arguments.
        """
        self.riot_api_handler = handler.RiotAPIHandler(riot_api_token)
        self.converter = converter.JSONConverter(self.riot_api_handler)

    def Match(self, request, context):
        """Get a match based on its identifier.

        Parameters:
            request: A MatchRequest containing the match id to fetch.
            context: Context of the request, injected by grpc.
        Returns:
            A MatchReference object containing extended match information
            (with statistics and meta data).
        """
        if not request.id:
            raise ValueError("Missing required field ID in the request.")
        if not request.region:
            raise ValueError("Missing required field Region in the request.")

        try:
            match_data = self.riot_api_handler.get_match(request.id,
                constants_pb2.Region.Name(request.region))
        except riotwatcher.LoLException as e:
            return match_pb2.MatchReference()

        return self.converter.json_match_to_match_pb(match_data)


def start_server(riot_api_token, listening_port, max_workers):
    """Starts a server."""
    service = MatchFetcher(riot_api_token)

    server = grpc.server(futures.ThreadPoolExecutor(max_workers=max_workers))
    service_pb2.add_MatchFetcherServicer_to_server(service, server)
    server.add_insecure_port('[::]:%s' % listening_port)
    server.start()

    return server, service


def main():
    """Parse command line arguments and start the server."""
    if FLAGS.riot_api_token == "":
        logging.critical("Required argument 'riot_api_token' is empty.")
        return 1

    server, _ = start_server(FLAGS.riot_api_token, FLAGS.port,
        FLAGS.max_workers)

    try:
        while True:
            time.sleep(60 * 60 * 24)
    except KeyboardInterrupt:
        server.stop(0)

if __name__ == '__main__':
    FLAGS(sys.argv)
    main()