defmodule TrimmerTest do
  use ExUnit.Case
  import Trimmer, only: [remove_chars: 1]

  test "basic test" do
    assert remove_chars("eloquent") == "loquen"
    assert remove_chars("country") == "ountr"
    assert remove_chars("person") == "erso"
    assert remove_chars("place") == "lac"
    assert remove_chars("ok") == ""
  end
end
