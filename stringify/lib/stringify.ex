defmodule Stringify do
  # We need a function that can transform a number into a string.
  # What ways of achieving this do you know?
  # Examples:
  #   Stringify.number_to_string(123) #=> "123"
  #   Stringify.number_to_string(999) #=> "999"

  # First attempt
  # def number_to_string(n), do: Integer.to_string(n)

  def number_to_string(n), do: to_string(n)

  # Another one
  # def number_to_string(n), do: "#{n}"
end
