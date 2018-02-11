defmodule FnWithinFn do
  # Given an input n, write a function always that returns a function which returns n.
  # Ruby should return a lambda or a proc.
  #   three = always(3)
  #   three.() #=> 3

  def always(n), do: fn -> n end
end
