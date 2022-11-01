defmodule BoolTest.Const do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :const, 1, type: :bool, deprecated: false
end