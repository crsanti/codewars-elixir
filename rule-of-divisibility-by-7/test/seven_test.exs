defmodule SevenTest do
  use ExUnit.Case
  import Seven, only: [seven: 1]

  test "seven" do
    assert seven(477_557_101) == [28, 7]
    assert seven(477_557_102) == [47, 7]
  end
end
