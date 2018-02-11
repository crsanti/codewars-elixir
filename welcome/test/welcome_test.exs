defmodule TestGreeter do
  use ExUnit.Case
  import Greeter, only: [greet: 1]

  test "some test description" do
    assert greet("english") == "Welcome"
    assert greet("dutch") == "Welkom"
    assert greet("IP_ADDRESS_INVALID") == "Welcome"
  end
end
