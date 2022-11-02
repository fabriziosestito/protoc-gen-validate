defmodule Cases.BoolNone do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :bool
end

defmodule Cases.BoolConstTrue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :bool, deprecated: false
end

defmodule Cases.BoolConstFalse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :bool, deprecated: false
end