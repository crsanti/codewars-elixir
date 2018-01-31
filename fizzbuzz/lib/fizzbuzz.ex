defmodule FizzBuzz do
  # Return an array containing the numbers from 1 to N, where N is the parametered value.
  # N will never be less than 1.
  # Replace certain values however if any of the following conditions are met:
  #   If the value is a multiple of 3: use the value 'Fizz' instead
  #   If the value is a multiple of 5: use the value 'Buzz' instead
  #   If the value is a multiple of 3 & 5: use the value 'FizzBuzz' instead

  # First attempt
  # def fizzbuzz(n) do
  #   Enum.to_list(1..n)
  #   |> Enum.map(&get_element(&1))
  # end

  # defmacrop multiple_of_3(n) do
  #   quote do: rem(unquote(n), 3) == 0
  # end

  # defmacrop multiple_of_5(n) do
  #   quote do: rem(unquote(n), 5) == 0
  # end

  # defmacro multiple_of_3_and_5(n) do
  #   quote do: multiple_of_3(unquote(n)) and multiple_of_5(unquote(n))
  # end

  # defp get_element(n) when multiple_of_3_and_5(n), do: "FizzBuzz"
  # defp get_element(n) when multiple_of_3(n), do: "Fizz"
  # defp get_element(n) when multiple_of_5(n), do: "Buzz"
  # defp get_element(n), do: n

  defp get_element(n) when rem(n, 15) == 0, do: "FizzBuzz"
  defp get_element(n) when rem(n, 3) == 0, do: "Fizz"
  defp get_element(n) when rem(n, 5) == 0, do: "Buzz"
  defp get_element(n), do: n

  def fizzbuzz(n) do
    Enum.map(1..n, &get_element/1)
  end
end
