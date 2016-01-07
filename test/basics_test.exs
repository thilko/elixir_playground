defmodule BasicsTest do
  use ExUnit.Case

  test "I can use tuples" do
    car = {"Caddy", 150}
    car = put_elem(car, 1, :red)

    assert elem(car, 1) == :red
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
