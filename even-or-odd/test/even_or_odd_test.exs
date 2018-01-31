defmodule EvenOrOddTest do
  use ExUnit.Case
  import EvenOrOdd, only: [even_or_odd: 1]

  test "basic" do
    assert even_or_odd(2) == "Even"
    assert even_or_odd(0) == "Even"
    assert even_or_odd(7) == "Odd"
    assert even_or_odd(1) == "Odd"
  end
end
