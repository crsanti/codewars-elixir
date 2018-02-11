defmodule ShortLongShort do
  # Given 2 strings, a and b, return a string of the form short+long+short, with the shorter string
  # on the outside and the longer string on the inside.
  # The strings will not be the same length, but they may be empty (length0).
  # For example:
  #   solution("1", "22") # returns "1221"
  #   solution("22", "1") # returns "1221"

  # First attempt
  # defp build_str(short, long), do: "#{short}#{long}#{short}"
  # def solution(a, b) do
  #   if String.length(a) > String.length(b) do
  #     build_str(b, a)
  #   else
  #     build_str(a, b)
  #   end
  # end

  def solution(a, b) do
    [short, long] = Enum.sort_by([a, b], &String.length/1)
    "#{short}#{long}#{short}"
  end
end
