defmodule StringRepeatTest do
  use ExUnit.Case
  import StringRepeat, only: [repeat_str: 2]

  test "Basic tests" do
    assert repeat_str(3, "*") == "***"
    assert repeat_str(5, "#") == "#####"
    assert repeat_str(2, "ha ") == "ha ha "
  end
end
