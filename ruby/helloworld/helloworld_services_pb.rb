# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: helloworld.proto for package ''

require 'grpc'
require 'helloworld_pb'

module Greeter
  class Service

    include GRPC::GenericService

    self.marshal_class_method = :encode
    self.unmarshal_class_method = :decode
    self.service_name = 'Greeter'

    rpc :SayHello, HelloRequest, HelloResponse
  end

  Stub = Service.rpc_stub_class
end
