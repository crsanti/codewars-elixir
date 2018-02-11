defmodule Trimmer do
  # It's pretty straightforward. Your goal is to create a function that removes
  # the first and last characters of a string. You're given one parameter, the original string.
  # You don't have to worry with strings with less than two characters.

  # First attempt
  # def remove_chars(str), do: String.slice(str, Range.new(1, String.length(str) - 2))

  def remove_chars(str), do: String.slice(str, 1..-2)
end
