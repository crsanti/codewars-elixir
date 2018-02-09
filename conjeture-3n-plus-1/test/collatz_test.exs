defmodule CollatzTest do
  use ExUnit.Case

  test "examples" do
    assert Collatz.hotpo(1) == 0
    assert Collatz.hotpo(5) == 5
    assert Collatz.hotpo(6) == 8
    assert Collatz.hotpo(23) == 15
    assert Collatz.hotpo(27) == 111
  end
end
