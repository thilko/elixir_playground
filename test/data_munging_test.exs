defmodule DataMungingTest do
  use ExUnit.Case
  doctest ElixirPlayground

  import String

  setup do
    {:ok, one: "   1  88    59    74          53.8       0.00 F       280  9.6 270  17  1.6  93 23 1004.5",
          two: ["   1  74    69    74          53.8       0.00 F       280  9.6 270  17  1.6  93 23 1004.5",
                "   2  80    59    74          53.8       0.00 F       280  9.6 270  17  1.6  93 23 1004.5"]}
  end

  test "create struct from string", context do
    day = to_day(context[:one])
    assert day.number == 1
    assert day.max_temp == 88
    assert day.min_temp == 59
  end

  test "calculate min temp spread", context do
    day = Enum.min_by(Enum.map(context[:two], &(to_day(&1))), &(&1.max_temp - &1.min_temp))
    assert day.number == 1
    assert day.max_temp == 74
    assert day.min_temp == 69
  end

  defmodule Day do
    defstruct number: nil, min_temp: nil, max_temp: nil
  end

  def to_day(day_string) do
    [day, max_temp, min_temp | tail] = split(day_string, " ", trim: true)
    %Day{number: to_integer(day), min_temp: to_integer(min_temp), max_temp: to_integer(max_temp)}
  end

end
