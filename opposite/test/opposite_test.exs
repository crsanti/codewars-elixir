defmodule OppositeTest do
  use ExUnit.Case
  import Opposite, only: [opposite: 1]

  test "returns a number's opposite" do
    assert opposite(1) === -1
  end
end
