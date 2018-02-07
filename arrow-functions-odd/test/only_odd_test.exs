defmodule OnlyOddTest do
  use ExUnit.Case
  import OnlyOdd, only: [odds: 1]

  test "handles empty array" do
    assert odds([]) == []
  end

  test "handles array with even numbers only" do
    assert odds([2, 4, 6]) == []
  end

  test "handles array with odd numbers only" do
    assert odds([1, 3, 5]) == [1, 3, 5]
  end

  test "handles mixed array" do
    assert odds([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
  end
end
