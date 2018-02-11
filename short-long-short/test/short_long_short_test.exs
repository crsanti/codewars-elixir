defmodule TestAgeUtils do
  use ExUnit.Case
  import ShortLongShort, only: [solution: 2]

  test "correct sequence" do
    assert solution("a", "bb") == "abba"
    assert solution("aa", "b") == "baab"
  end
end
