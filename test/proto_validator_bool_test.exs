defmodule ProtoValidator.ProtoValidatorBoolTest do
  use ExUnit.Case, async: true

  describe "validate string const rule" do
    test "should be valid when the value is the same as the declared const" do
      assert :ok =
               ProtoValidator.validate(%BoolTest.Const{
                 const: true
               })
    end

    test "should be invalid when the value is different as the declared const" do
      assert {:error, "Invalid const, value should be true"} =
               ProtoValidator.validate(%BoolTest.Const{
                const: false
               })
    end
  end
end
