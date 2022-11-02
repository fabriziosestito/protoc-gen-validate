defmodule ProtoValidator.Gen.Cases.BoolNone do
  @moduledoc false
  use ProtoValidator, entity: Cases.BoolNone

  validate(:val, type: :bool)
end

defmodule ProtoValidator.Gen.Cases.BoolConstTrue do
  @moduledoc false
  use ProtoValidator, entity: Cases.BoolConstTrue

  validate(:val, type: :bool, bool: [const: true])
end

defmodule ProtoValidator.Gen.Cases.BoolConstFalse do
  @moduledoc false
  use ProtoValidator, entity: Cases.BoolConstFalse

  validate(:val, type: :bool, bool: [const: false])
end