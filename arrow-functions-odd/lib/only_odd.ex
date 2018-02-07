defmodule OnlyOdd do
  import Integer, only: [is_odd: 1]

  # Time to test your basic knowledge in functions! Return the odds from a list:
  # odds([1,2,3,4,5]) #=> [1,3,5]

  def odds(nums) do
    Enum.filter(nums, &is_odd/1)
  end
end
