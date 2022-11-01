defmodule ProtoValidator.Gen.Test.StringNone do
  @moduledoc false
  use ProtoValidator, entity: Test.StringNone

  validate(:val, type: :string)
end

defmodule ProtoValidator.Gen.Test.StringConst do
  @moduledoc false
  use ProtoValidator, entity: Test.StringConst

  validate(:val, type: :string, string: [const: "foo"])
end

defmodule ProtoValidator.Gen.Test.StringIn do
  @moduledoc false
  use ProtoValidator, entity: Test.StringIn

  validate(:val, type: :string, string: [in: ["bar", "baz"]])
end

defmodule ProtoValidator.Gen.Test.StringNotIn do
  @moduledoc false
  use ProtoValidator, entity: Test.StringNotIn

  validate(:val, type: :string, string: [not_in: ["fizz", "buzz"]])
end

defmodule ProtoValidator.Gen.Test.StringLen do
  @moduledoc false
  use ProtoValidator, entity: Test.StringLen

  validate(:val, type: :string, string: [len: 3])
end

defmodule ProtoValidator.Gen.Test.StringMinLen do
  @moduledoc false
  use ProtoValidator, entity: Test.StringMinLen

  validate(:val, type: :string, string: [min_len: 3])
end

defmodule ProtoValidator.Gen.Test.StringMaxLen do
  @moduledoc false
  use ProtoValidator, entity: Test.StringMaxLen

  validate(:val, type: :string, string: [max_len: 5])
end

defmodule ProtoValidator.Gen.Test.StringMinMaxLen do
  @moduledoc false
  use ProtoValidator, entity: Test.StringMinMaxLen

  validate(:val, type: :string, string: [max_len: 5, min_len: 3])
end

defmodule ProtoValidator.Gen.Test.StringEqualMinMaxLen do
  @moduledoc false
  use ProtoValidator, entity: Test.StringEqualMinMaxLen

  validate(:val, type: :string, string: [max_len: 5, min_len: 5])
end

defmodule ProtoValidator.Gen.Test.StringLenBytes do
  @moduledoc false
  use ProtoValidator, entity: Test.StringLenBytes

  validate(:val, type: :string, string: [len_bytes: 4])
end

defmodule ProtoValidator.Gen.Test.StringMinBytes do
  @moduledoc false
  use ProtoValidator, entity: Test.StringMinBytes

  validate(:val, type: :string, string: [min_bytes: 4])
end

defmodule ProtoValidator.Gen.Test.StringMaxBytes do
  @moduledoc false
  use ProtoValidator, entity: Test.StringMaxBytes

  validate(:val, type: :string, string: [max_bytes: 8])
end

defmodule ProtoValidator.Gen.Test.StringMinMaxBytes do
  @moduledoc false
  use ProtoValidator, entity: Test.StringMinMaxBytes

  validate(:val, type: :string, string: [max_bytes: 8, min_bytes: 4])
end

defmodule ProtoValidator.Gen.Test.StringEqualMinMaxBytes do
  @moduledoc false
  use ProtoValidator, entity: Test.StringEqualMinMaxBytes

  validate(:val, type: :string, string: [max_bytes: 8, min_bytes: 4])
end

defmodule ProtoValidator.Gen.Test.StringPattern do
  @moduledoc false
  use ProtoValidator, entity: Test.StringPattern

  validate(:val, type: :string, string: [pattern: "(?i)^[a-z0-9]+$"])
end

defmodule ProtoValidator.Gen.Test.StringPatternEscapes do
  @moduledoc false
  use ProtoValidator, entity: Test.StringPatternEscapes

  validate(:val, type: :string, string: [pattern: "\\* \\\\ \\w"])
end

defmodule ProtoValidator.Gen.Test.StringPrefix do
  @moduledoc false
  use ProtoValidator, entity: Test.StringPrefix

  validate(:val, type: :string, string: [prefix: "foo"])
end

defmodule ProtoValidator.Gen.Test.StringContains do
  @moduledoc false
  use ProtoValidator, entity: Test.StringContains

  validate(:val, type: :string, string: [contains: "bar"])
end

defmodule ProtoValidator.Gen.Test.StringNotContains do
  @moduledoc false
  use ProtoValidator, entity: Test.StringNotContains

  validate(:val, type: :string, string: [not_contains: "bar"])
end

defmodule ProtoValidator.Gen.Test.StringSuffix do
  @moduledoc false
  use ProtoValidator, entity: Test.StringSuffix

  validate(:val, type: :string, string: [suffix: "baz"])
end

defmodule ProtoValidator.Gen.Test.StringEmail do
  @moduledoc false
  use ProtoValidator, entity: Test.StringEmail

  validate(:val, type: :string, string: [well_known: [email: true]])
end

defmodule ProtoValidator.Gen.Test.StringAddress do
  @moduledoc false
  use ProtoValidator, entity: Test.StringAddress

  validate(:val, type: :string, string: [well_known: [address: true]])
end

defmodule ProtoValidator.Gen.Test.StringHostname do
  @moduledoc false
  use ProtoValidator, entity: Test.StringHostname

  validate(:val, type: :string, string: [well_known: [hostname: true]])
end

defmodule ProtoValidator.Gen.Test.StringIP do
  @moduledoc false
  use ProtoValidator, entity: Test.StringIP

  validate(:val, type: :string, string: [well_known: [ip: true]])
end

defmodule ProtoValidator.Gen.Test.StringIPv4 do
  @moduledoc false
  use ProtoValidator, entity: Test.StringIPv4

  validate(:val, type: :string, string: [well_known: [ipv4: true]])
end

defmodule ProtoValidator.Gen.Test.StringIPv6 do
  @moduledoc false
  use ProtoValidator, entity: Test.StringIPv6

  validate(:val, type: :string, string: [well_known: [ipv6: true]])
end

defmodule ProtoValidator.Gen.Test.StringURI do
  @moduledoc false
  use ProtoValidator, entity: Test.StringURI

  validate(:val, type: :string, string: [well_known: [uri: true]])
end

defmodule ProtoValidator.Gen.Test.StringURIRef do
  @moduledoc false
  use ProtoValidator, entity: Test.StringURIRef

  validate(:val, type: :string, string: [well_known: [uri_ref: true]])
end

defmodule ProtoValidator.Gen.Test.StringUUID do
  @moduledoc false
  use ProtoValidator, entity: Test.StringUUID

  validate(:val, type: :string, string: [well_known: [uuid: true]])
end

defmodule ProtoValidator.Gen.Test.StringHttpHeaderName do
  @moduledoc false
  use ProtoValidator, entity: Test.StringHttpHeaderName

  validate(:val, type: :string, string: [well_known: [well_known_regex: [HTTP_HEADER_NAME]]])
end

defmodule ProtoValidator.Gen.Test.StringHttpHeaderValue do
  @moduledoc false
  use ProtoValidator, entity: Test.StringHttpHeaderValue

  validate(:val, type: :string, string: [well_known: [well_known_regex: [HTTP_HEADER_VALUE]]])
end

defmodule ProtoValidator.Gen.Test.StringValidHeader do
  @moduledoc false
  use ProtoValidator, entity: Test.StringValidHeader

  validate(:val, type: :string, string: [well_known: [well_known_regex: [HTTP_HEADER_VALUE]]])
end

defmodule ProtoValidator.Gen.Test.StringUUIDIgnore do
  @moduledoc false
  use ProtoValidator, entity: Test.StringUUIDIgnore

  validate(:val, type: :string, string: [ignore_empty: true, well_known: [uuid: true]])
end

defmodule ProtoValidator.Gen.Test.StringInOneOf do
  @moduledoc false
  use ProtoValidator, entity: Test.StringInOneOf

  validate(:bar, type: :string, string: [in: ["a", "b"]])
end