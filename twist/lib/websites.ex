defmodule Websites do
  # This is an easy twist to the example kata (provided by Codewars when learning how to create
  #  your own kata).
  # Add the value "codewars" to the array websites/Websites 1,000 times.

  # First attempt
  # def websites do
  #   Stream.repeatedly(fn -> "codewars" end) |> Enum.take(1000)
  # end

  def websites do
    List.duplicate("codewars", 1000)
  end
end
