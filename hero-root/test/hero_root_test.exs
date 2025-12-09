defmodule HeroRootTest do
  use ExUnit.Case
  doctest HeroRoot
  import HeroRoot, only: [int_rac: 2]

  test "int_rac" do
    assert int_rac(25, 1) == 4
    assert int_rac(125348, 300) == 3
    assert int_rac(125348981764, 356243) == 3
    assert int_rac(154197, 12) == 8
    assert int_rac(237116, 23) == 8
    assert int_rac(206155, 77) == 6
  end
end
