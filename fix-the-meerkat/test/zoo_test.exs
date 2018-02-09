defmodule ZooTest do
  use ExUnit.Case
  import Zoo, only: [fix_the_meerkat: 1]

  test "basic cases" do
    assert fix_the_meerkat({"tail", "body", "head"}) == {"head", "body", "tail"}
    assert fix_the_meerkat({"tails", "body", "heads"}) == {"heads", "body", "tails"}
    assert fix_the_meerkat({"bottom", "middle", "top"}) == {"top", "middle", "bottom"}
    assert fix_the_meerkat({"lower legs", "torso", "upper legs"}) == {"upper legs", "torso", "lower legs"}
    assert fix_the_meerkat({"ground", "rainbow", "sky"}) == {"sky", "rainbow", "ground"}
  end
end
