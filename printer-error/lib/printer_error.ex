defmodule Printererror do
  # In a factory a printer prints labels for boxes. For one kind of boxes the printer has to use colors
  # which, for the sake of simplicity, are named with letters from a to m.
  # The colors used by the printer are recorded in a control string. For example a "good" control string
  # would be aaabbbbhaijjjm meaning that the printer used three times color a, four times color b,
  # one time color h then one time color a...
  # Sometimes there are problems: lack of colors, technical malfunction and a "bad" control string
  # is produced e.g. aaaxbbbbyyhwawiwjjjwwm.
  # You have to write a function printer_error which given a string will output the error rate of the
  # printer as a string representing a rational whose numerator is the number of errors
  # and the denominator the length of the control string.
  # Don't reduce this fraction to a simpler expression.
  # The string has a length greater or equal to one and contains only letters from ato z.
  # Examples:
  # ```
  # s="aaabbbbhaijjjm"
  # error_printer(s) => "0/14"
  # s="aaaxbbbbyyhwawiwjjjwwm"
  # error_printer(s) => "8/22"
  # ```

  # First attempt
  # defp print_results(length, errors) do
  #   Integer.to_string(length) <> "/" <> Integer.to_string(errors)
  # end

  # def printer_error(s) do
  #   s
  #   |> String.codepoints()
  #   |> Enum.reduce(0, fn
  #     char, acc when char > "m" -> acc + 1
  #     _, acc -> acc
  #   end)
  #   |> print_results(String.length(s))
  # end
  def printer_error(s) do
    "#{count_wrong_colours(s)}/#{String.length(s)}"
  end

  def count_wrong_colours(s) do
    s
    |> String.codepoints()
    |> Enum.count(fn codepoint -> codepoint > "m" end)
  end
end
