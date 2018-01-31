defmodule StringifyTest do
  use ExUnit.Case
  import Stringify, only: [number_to_string: 1]

  test "turns number into string" do
    assert number_to_string(67) == "67"
  end
end
