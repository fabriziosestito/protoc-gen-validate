defmodule ProtoValidator.BoolTest do
  use ExUnit.Case, async: true

  import ProtoValidator.TestHelper

  @cases [
    {"bool - none - valid", %Cases.BoolNone{val: true}, true},
    {"bool - const (true) - valid", %Cases.BoolConstTrue{val: true}, true},
    {"bool - const (true) - invalid", %Cases.BoolConstTrue{val: false}, false},
    {"bool - const (false) - valid", %Cases.BoolConstFalse{val: false}, true},
    {"bool - const (false) - invalid", %Cases.BoolConstFalse{val: true}, false}
  ]

  test "bool" do
    for {description, message, expected} <- @cases do
      assert expected == message |> ProtoValidator.validate() |> passed?(),
             "failed: #{description}"
    end
  end
end
