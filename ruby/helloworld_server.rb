this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'helloworld_services_pb'

# GreeterServer is simple server that implements the Helloworld Greeter server.
class GreeterServer < Greeter::Service
  # say_hello implements the SayHello rpc method.
  def say_hello(hello_req, _unused_call)
    p "Received #{hello_req} from client"
    HelloResponse.new(message: "Hello #{hello_req.name}")
  end
end

# main starts an RpcServer that receives requests to GreeterServer at the sample
def main
  s = GRPC::RpcServer.new
  s.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
  s.handle(GreeterServer)
  s.run_till_terminated_or_interrupted([1, 'int', 'SIGQUIT'])
end

main