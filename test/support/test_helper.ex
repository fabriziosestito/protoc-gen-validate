defmodule ProtoValidator.TestHelper do
  def passed?(:ok), do: true
  def passed?({:error, _}), do: false

end
