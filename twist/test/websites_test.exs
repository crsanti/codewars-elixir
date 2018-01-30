defmodule TestWebsites do
  use ExUnit.Case
  import Websites, only: [websites: 0]

  test "contains 1,000 elements" do
    assert length(websites()) == 1000
  end

  test "all elements are 'codewars'" do
    assert Enum.all?(websites(), &("codewars" == &1))
  end
end
