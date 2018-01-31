defmodule StringRepeat do
  # Write a function called repeatStr which repeats the given string string exactly n times.
  # Examples:
  # repeat_str(6, "I") # "IIIIII"
  # repeat_str(5, "Hello") # "HelloHelloHelloHelloHello"

  # First attempt
  # def repeat_str(n, s) do
  #   :binary.copy(s, n)
  # end

  def repeat_str(n, s) do
    String.duplicate(s, n)
  end
end
