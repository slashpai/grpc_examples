# gRPC examples

Repo with examples for gRPC

## Helpful VS Code Extensions

* [vscode-proto3](https://github.com/zxh0/vscode-proto3)

* [clang-format](https://marketplace.visualstudio.com/items?itemName=xaver.clang-format)

## Examples

### Ruby

From root of this git repo

  ```ruby
  bundle install
  ```

* Create a directory to store generated ruby code

  ```bash
  mkdir -p ruby/lib
  ```

#### Helloworld

* Generate source code from proto file using grpc_tools

  ```ruby
  grpc_tools_ruby_protoc -I protos --ruby_out ruby/lib --grpc_out ruby/lib protos/helloworld.proto
  ```

* Implemented service rpc method in [server code](ruby/helloworld_server.rb) and called this from [client code](helloworld_client.rb)

* To run server and client code
  * From root of repo, open two terminals and run following

    ```ruby
    ruby ruby/helloworld_server.rb
    ```

    ```ruby
    ruby ruby/helloworld_client.rb Jake
    ```

## Use Docker for trail runs without installing any dependencies in your machine

_Implemented only for ruby now_

  ```bash
  docker build --no-cache . -t grpc_examples:v1
  ```

## References

* [what is grpc](https://grpc.io/docs/what-is-grpc/introduction/)

* [grpc core concepts](https://grpc.io/docs/what-is-grpc/core-concepts/)

* [grpc ruby quick start](https://grpc.io/docs/languages/ruby/quickstart/)
