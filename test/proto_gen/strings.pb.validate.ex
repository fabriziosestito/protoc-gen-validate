defmodule ProtoValidator.Gen.Cases.StringNone do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringNone

  validate(:val, type: :string)
end

defmodule ProtoValidator.Gen.Cases.StringConst do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringConst

  validate(:val, type: :string, string: [const: "foo"])
end

defmodule ProtoValidator.Gen.Cases.StringIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringIn

  validate(:val, type: :string, string: [in: ["bar", "baz"]])
end

defmodule ProtoValidator.Gen.Cases.StringNotIn do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringNotIn

  validate(:val, type: :string, string: [not_in: ["fizz", "buzz"]])
end

defmodule ProtoValidator.Gen.Cases.StringLen do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringLen

  validate(:val, type: :string, string: [len: 3])
end

defmodule ProtoValidator.Gen.Cases.StringMinLen do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringMinLen

  validate(:val, type: :string, string: [min_len: 3])
end

defmodule ProtoValidator.Gen.Cases.StringMaxLen do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringMaxLen

  validate(:val, type: :string, string: [max_len: 5])
end

defmodule ProtoValidator.Gen.Cases.StringMinMaxLen do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringMinMaxLen

  validate(:val, type: :string, string: [max_len: 5, min_len: 3])
end

defmodule ProtoValidator.Gen.Cases.StringEqualMinMaxLen do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringEqualMinMaxLen

  validate(:val, type: :string, string: [max_len: 5, min_len: 5])
end

defmodule ProtoValidator.Gen.Cases.StringLenBytes do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringLenBytes

  validate(:val, type: :string, string: [len_bytes: 4])
end

defmodule ProtoValidator.Gen.Cases.StringMinBytes do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringMinBytes

  validate(:val, type: :string, string: [min_bytes: 4])
end

defmodule ProtoValidator.Gen.Cases.StringMaxBytes do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringMaxBytes

  validate(:val, type: :string, string: [max_bytes: 8])
end

defmodule ProtoValidator.Gen.Cases.StringMinMaxBytes do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringMinMaxBytes

  validate(:val, type: :string, string: [max_bytes: 8, min_bytes: 4])
end

defmodule ProtoValidator.Gen.Cases.StringEqualMinMaxBytes do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringEqualMinMaxBytes

  validate(:val, type: :string, string: [max_bytes: 8, min_bytes: 4])
end

defmodule ProtoValidator.Gen.Cases.StringPattern do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringPattern

  validate(:val, type: :string, string: [pattern: "(?i)^[a-z0-9]+$"])
end

defmodule ProtoValidator.Gen.Cases.StringPatternEscapes do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringPatternEscapes

  validate(:val, type: :string, string: [pattern: "\\* \\\\ \\w"])
end

defmodule ProtoValidator.Gen.Cases.StringPrefix do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringPrefix

  validate(:val, type: :string, string: [prefix: "foo"])
end

defmodule ProtoValidator.Gen.Cases.StringContains do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringContains

  validate(:val, type: :string, string: [contains: "bar"])
end

defmodule ProtoValidator.Gen.Cases.StringNotContains do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringNotContains

  validate(:val, type: :string, string: [not_contains: "bar"])
end

defmodule ProtoValidator.Gen.Cases.StringSuffix do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringSuffix

  validate(:val, type: :string, string: [suffix: "baz"])
end

defmodule ProtoValidator.Gen.Cases.StringEmail do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringEmail

  validate(:val, type: :string, string: [well_known: [email: true]])
end

defmodule ProtoValidator.Gen.Cases.StringAddress do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringAddress

  validate(:val, type: :string, string: [well_known: [address: true]])
end

defmodule ProtoValidator.Gen.Cases.StringHostname do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringHostname

  validate(:val, type: :string, string: [well_known: [hostname: true]])
end

defmodule ProtoValidator.Gen.Cases.StringIP do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringIP

  validate(:val, type: :string, string: [well_known: [ip: true]])
end

defmodule ProtoValidator.Gen.Cases.StringIPv4 do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringIPv4

  validate(:val, type: :string, string: [well_known: [ipv4: true]])
end

defmodule ProtoValidator.Gen.Cases.StringIPv6 do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringIPv6

  validate(:val, type: :string, string: [well_known: [ipv6: true]])
end

defmodule ProtoValidator.Gen.Cases.StringURI do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringURI

  validate(:val, type: :string, string: [well_known: [uri: true]])
end

defmodule ProtoValidator.Gen.Cases.StringURIRef do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringURIRef

  validate(:val, type: :string, string: [well_known: [uri_ref: true]])
end

defmodule ProtoValidator.Gen.Cases.StringUUID do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringUUID

  validate(:val, type: :string, string: [well_known: [uuid: true]])
end

defmodule ProtoValidator.Gen.Cases.StringHttpHeaderName do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringHttpHeaderName

  validate(:val, type: :string, string: [well_known: [well_known_regex: [HTTP_HEADER_NAME]]])
end

defmodule ProtoValidator.Gen.Cases.StringHttpHeaderValue do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringHttpHeaderValue

  validate(:val, type: :string, string: [well_known: [well_known_regex: [HTTP_HEADER_VALUE]]])
end

defmodule ProtoValidator.Gen.Cases.StringValidHeader do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringValidHeader

  validate(:val, type: :string, string: [well_known: [well_known_regex: [HTTP_HEADER_VALUE]]])
end

defmodule ProtoValidator.Gen.Cases.StringUUIDIgnore do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringUUIDIgnore

  validate(:val, type: :string, string: [ignore_empty: true, well_known: [uuid: true]])
end

defmodule ProtoValidator.Gen.Cases.StringInOneOf do
  @moduledoc false
  use ProtoValidator, entity: Cases.StringInOneOf

  validate(:bar, type: :string, string: [in: ["a", "b"]])
end