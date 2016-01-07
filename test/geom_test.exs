defmodule GeomTest do
  use ExUnit.Case

  @doc " Etude 2-1 "
  test "area returns the area of an rectangle" do
    assert Geom.area(:rectangle, 2,3) == 6
  end

  @doc " Etude 2-2 "
  @tag :skip
  test "use default values for length and width" do
    assert Geom.area(:rectangle) == 1
  end

  @doc " Etude 2-4 "
  test "what happens with default values that are not on the last position" do
    assert Geom.sum(10,10,10) == 30
    assert Geom.sum(10,10) == 27
    assert Geom.sum(10) == 20 # takes the middle one
  end

  @doc " Etude 3-1"
  test "using pattern matching to support the calc of rectangle, triangle or ellipse" do
    assert Geom.area(:rectangle, 3,4) == 12
    assert Geom.area(:triangle, 3,5) == 7.5
    assert Geom.area(:ellipse, 2,4) == 25.132741228718345
  end

  @doc " Etude 3-2"
  test "using guards to avoid negative values" do
    assert_raise FunctionClauseError, fn -> Geom.area(:rectangle, -3,4) end
    assert_raise FunctionClauseError, fn -> Geom.area(:triangle, -3,5) end
    assert_raise FunctionClauseError, fn -> Geom.area(:ellipse, -2,4) end
  end

  @doc " Etude 3-3"
  test "use _ to create a catch-all" do
    assert Geom.area(:nubs, 2, 4) == 42
  end
end
