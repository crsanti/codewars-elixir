defmodule FizzBuzzTest do
  use ExUnit.Case
  import FizzBuzz, only: [fizzbuzz: 1]

  test "FizzBuzz" do
    assert fizzbuzz(10) == [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz"]
  end
end
