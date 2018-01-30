defmodule TestNegator do
  use ExUnit.Case
  import Negator, only: [make_negative: 1]

  test "using 0 as parameter" do
    assert make_negative(0) == 0
  end

  test "using positive as parameter" do
    assert make_negative(42) == -42
  end

  test "using negative as parameter" do
    assert make_negative(-42) == -42
  end
end
