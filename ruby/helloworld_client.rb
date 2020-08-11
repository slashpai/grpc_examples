this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'helloworld_services_pb'

def main
  user = ARGV.size > 0 ?  ARGV[0] : 'world'
  stub = Greeter::Stub.new('localhost:50051', :this_channel_is_insecure)
  begin
    message = stub.say_hello(HelloRequest.new(name: user)).message
    p "Greeting: #{message}"
  rescue GRPC::BadStatus => e
    abort "ERROR: #{e.message}"
  end
end

main
