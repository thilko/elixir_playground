defmodule PowersTest do
  use ExUnit.Case

  test "calculate the power of x^n" do
    assert Powers.raise(2,3) == 8
    assert Powers.raise(5,1) == 5
    assert Powers.raise(2,0) == 1
    assert Powers.raise(2,-3) == 0.125
  end

  test "calculate the nth root" do
    assert Powers.nth_root(27,3) == 3.0
  end
end
