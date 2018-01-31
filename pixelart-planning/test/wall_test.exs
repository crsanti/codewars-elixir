defmodule TestSolution do
  use ExUnit.Case
  import Wall, only: [is_divisible: 2]

  test "Basic tests" do
    assert is_divisible(4050, 27) == true
    assert is_divisible(4066, 27) == false
    assert is_divisible(10000, 20) == true
    assert is_divisible(10005, 20) == false
    assert is_divisible(10005, 1) == true
  end
end
