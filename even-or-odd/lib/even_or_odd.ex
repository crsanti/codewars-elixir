defmodule EvenOrOdd do
  import Integer, only: [is_even: 1]
  # Create a function that takes an integer as an argument and
  # returns "Even" for even numbers or "Odd" for odd numbers.

  def even_or_odd(number) when is_even(number), do: "Even"
  def even_or_odd(_), do: "Odd"
end
