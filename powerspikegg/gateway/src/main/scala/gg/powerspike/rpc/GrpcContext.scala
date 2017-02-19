package gg.powerspike.rpc

import io.grpc.{ManagedChannel, ManagedChannelBuilder}

class GrpcContext {

  private val port = 50001

  private val address = "127.0.0.1"

  val channel: ManagedChannel = ManagedChannelBuilder
    .forAddress(address, port)
    .usePlaintext(true)
    .build()

}
