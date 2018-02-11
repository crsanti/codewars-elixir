defmodule Conditional do
  # Who likes keywords? Nobody likes keywords, so why use them?
  # You know what keyword I use too much? if! We should make a function called _if,
  # with its arguments as a logical test and two functions/lambdas where the first function is executed
  # if the boolean is true, and the second if it's false, like an if/else statement, so that
  # we don't have to mess around with those nasty keywords!
  # Even so, It should support truthy/falsy types just like the keyword.
  # Example:
  #   _if(true, fn -> IO.puts "true" end, fn -> IO.puts "false" end)
  # prints "true" to the console
  #   _if(true, fn -> IO.puts "true" end, fn -> IO.puts "false" end)
  # prints "true" to the console

  # First attempt
  # def _if(bool, _, felse) when bool == false or bool == nil, do: felse.()
  # def _if(_, fthen, _), do: fthen.()

  def _if(falsy, _, felse) when falsy in [false, nil], do: felse.()
  def _if(_, fthen, _), do: fthen.()
end
