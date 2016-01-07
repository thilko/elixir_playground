defmodule UnderscoreTest do
  use ExUnit.Case

  test "Underscores can be used to indicate that values are not important" do
    assert perimeter(:ignored, 1) == 6.283185307179586
  end

  def perimeter(_, radius) do
    2 * :math.pi() * radius
  end

  def perimeter2(_unused, radius) do
    
  end

end
