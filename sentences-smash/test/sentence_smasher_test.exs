defmodule SentenceSmasherTest do
  use ExUnit.Case
  import SentenceSmasher, only: [smash: 1]

  test "simple smashing" do
    assert smash(["hello"]) == "hello"
    assert smash(["hello", "world"]) == "hello world"
  end
end
