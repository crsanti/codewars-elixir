# TODO: Replace examples and use TDD development by writing your own tests

defmodule TestSolution do
  use ExUnit.Case
  import Password, only: [check: 2]

  test "basic tests" do
    assert check("", "") == false

    assert check(
             "anything",
             "CF329313EBB04CD2A6440547EC374C5A8EF601C82862251782EB03843DED6BEA"
           ) == false

    assert check(
             "correct.horse.battery.staple",
             "CF329313EBB04CD2A6440547EC374C5A8EF601C82862251782EB03843DED6BEA"
           ) == true
  end
end
