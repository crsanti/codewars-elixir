defmodule Collatz do
  import Integer, only: [is_odd: 1, is_even: 1]

  # The Collatz conjecture (also known as 3n+1 conjecture) is a conjecture that applying
  # the following algorithm to any number we will always eventually reach one:
  # [This is writen in pseudocode]
  #   if(number is even) number = number / 2
  #   if(number is odd) number = 3*number + 1
  # Your task is to make a function hotpo that takes a positive number as input
  # and returns the number of times you need to perform this algorithm to get number = 1.
  # Examples
  #   hotpo(1) returns 0
  #   (1 is already 1)
  #   hotpo(5) returns 5
  #   5 -> 16 -> 8 -> 4 -> 2 -> 1
  #   hotpo(6) returns 8
  #   6 -> 3 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
  #   hotpo(23) returns 15
  #   23 -> 70 -> 35 -> 106 -> 53 -> 160 -> 80 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
  # https://en.wikipedia.org/wiki/Collatz_conjecture

  # First attempt
  # defp get_next_number(number) when is_even(number), do: round(number / 2)
  # defp get_next_number(number) when is_odd(number), do: 3 * number + 1

  # def hotpo(number, count \\ 0)
  # def hotpo(1, count), do: count
  # def hotpo(number, count) do
  #   get_next_number(number)
  #   |> hotpo(count + 1)
  # end

  def hotpo(1), do: 0
  def hotpo(number) when is_odd(number), do: 1 + hotpo(3 * number + 1)
  def hotpo(number) when is_even(number), do: 1 + hotpo(div(number, 2))
end
