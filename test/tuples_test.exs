defmodule TuplesTest do
  use ExUnit.Case

  test "extracting data from Tuples" do
    car = {"Caddy", 150}
    car = put_elem(car, 1, :red)

    assert elem(car, 1) == :red
    assert sample_method({1,5}) == 6
  end

  def sample_method({car, speed}) do
    car + speed
  end

  test "Tuples and pattern matching" do
    assert "Hello Thilko" == pattern_matching({:hello, "Thilko"})
    assert "Hi Thilko" == pattern_matching({:hi, "Thilko"})
  end

  def pattern_matching({:hello, name})do
    "Hello #{name}"
  end

  def pattern_matching({:hi, name})do
    "Hi #{name}"
  end

end
