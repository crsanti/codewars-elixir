defmodule SpeedcontrolTest do
  use ExUnit.Case
  import SpeedControl, only: [gps: 2]

  def assertFuzzyEquals(actual, expected) do
    merr = 1
    inrange = abs(actual - expected) <= merr
    IO.puts("In range: #{inrange}")

    if inrange == false do
      exp = round(expected)
      act = round(actual)
      IO.puts("At 1.0: Expected value must be #{exp} but was #{act}")
    end

    assert inrange == true
  end

  test "gps" do
    x = [0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61]
    s = 20
    u = 41
    assertFuzzyEquals(gps(s, x), u)
    x = [0.0, 0.11, 0.22, 0.33, 0.44, 0.65, 1.08, 1.26, 1.68, 1.89, 2.1, 2.31, 2.52, 3.25]
    s = 12
    u = 219
    assertFuzzyEquals(gps(s, x), u)

    x = [
      0.0,
      0.18,
      0.36,
      0.54,
      0.72,
      1.05,
      1.26,
      1.47,
      1.92,
      2.16,
      2.4,
      2.64,
      2.88,
      3.12,
      3.36,
      3.6,
      3.84
    ]

    s = 20
    u = 80
    assertFuzzyEquals(gps(s, x), u)
  end
end
