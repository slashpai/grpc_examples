# gRPC examples

Repo with examples for gRPC

## Helloworld

From protos directory

**Generate source code from proto file**

*Create a directory to store generated code*

```bash
mkdir -p ../ruby/helloworld
```

```ruby
grpc_tools_ruby_protoc --ruby_out ../ruby --grpc_out ../ruby helloworld.proto
```

## Use Docker for trail runs without installing any dependencies in your machine

```bash
docker build --no-cache . -t grpc_examples:v1
```

References

* https://grpc.io/docs/what-is-grpc/introduction/

* https://grpc.io/docs/what-is-grpc/core-concepts/

* https://grpc.io/docs/languages/ruby/quickstart/
