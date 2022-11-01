defmodule ProtoValidator.Gen.BoolTest.Const do
  @moduledoc false
  use ProtoValidator, entity: BoolTest.Const

  validate(:const, type: :bool, bool: [const: true])
end