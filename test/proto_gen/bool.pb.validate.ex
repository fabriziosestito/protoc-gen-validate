defmodule ProtoValidator.Gen.Test.BoolNone do
  @moduledoc false
  use ProtoValidator, entity: Test.BoolNone

  validate(:val, type: :bool)
end

defmodule ProtoValidator.Gen.Test.BoolConstTrue do
  @moduledoc false
  use ProtoValidator, entity: Test.BoolConstTrue

  validate(:val, type: :bool, bool: [const: true])
end

defmodule ProtoValidator.Gen.Test.BoolConstFalse do
  @moduledoc false
  use ProtoValidator, entity: Test.BoolConstFalse

  validate(:val, type: :bool, bool: [const: false])
end