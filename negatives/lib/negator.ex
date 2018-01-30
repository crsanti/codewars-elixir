defmodule Negator do
  # In this simple assignment you are given a number and have to make it negative.
  # But maybe the number is already negative?
  # Examples
  # ```
  # make_negative 1    # return -1
  # make_negative -5   # return -5
  # make_negative 0    # return 0
  # ```

  # First attempt
  # def make_negative(num) when num <= 0, do: num
  # def make_negative(num) when num > 0, do: num * -1
  def make_negative(num), do: -abs(num)
end
