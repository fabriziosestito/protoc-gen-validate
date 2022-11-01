defmodule Test.StringNone do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string
end

defmodule Test.StringConst do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringIn do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringNotIn do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringLen do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringMinLen do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringMaxLen do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringMinMaxLen do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringEqualMinMaxLen do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringLenBytes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringMinBytes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringMaxBytes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringMinMaxBytes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringEqualMinMaxBytes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringPattern do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringPatternEscapes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringPrefix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringContains do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringNotContains do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringSuffix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringEmail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringAddress do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringHostname do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringIP do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringIPv4 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringIPv6 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringURI do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringURIRef do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringUUID do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringHttpHeaderName do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringHttpHeaderValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringValidHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringUUIDIgnore do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :val, 1, type: :string, deprecated: false
end

defmodule Test.StringInOneOf do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :foo, 0

  field :bar, 1, type: :string, oneof: 0, deprecated: false
end