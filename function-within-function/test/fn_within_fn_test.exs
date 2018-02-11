defmodule FnWithinFnTest do
  use ExUnit.Case
  import FnWithinFn, only: [always: 1]

  test "return a function which return 3" do
    assert always(3).() == 3
  end
end
