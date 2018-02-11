defmodule TestConditional do
  use ExUnit.Case
  import Conditional, only: [_if: 3]

  test "simple check on common cases" do
    fthen = fn -> :then end
    felse = fn -> :else end
    assert _if(true, fthen, felse) == :then
    assert _if(false, fthen, felse) == :else
  end
end
