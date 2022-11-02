defmodule Cases.StringNone do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string
end

defmodule Cases.StringConst do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringIn do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringNotIn do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringLen do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringMinLen do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringMaxLen do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringMinMaxLen do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringEqualMinMaxLen do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringLenBytes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringMinBytes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringMaxBytes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringMinMaxBytes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringEqualMinMaxBytes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringPattern do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringPatternEscapes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringPrefix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringContains do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringNotContains do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringSuffix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringEmail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringAddress do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringHostname do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringIP do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringIPv4 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringIPv6 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringURI do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringURIRef do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringUUID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringHttpHeaderName do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringHttpHeaderValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringValidHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringUUIDIgnore do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Cases.StringInOneOf do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :foo, 0

  field :bar, 1, type: :string, oneof: 0, deprecated: false
end