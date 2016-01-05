defmodule ElixirPlaygroundTest do
  use ExUnit.Case
  doctest ElixirPlayground
  import Spring

  test "I can create functions" do
    assert ElixirPlayground.sum(1,2) == 3
  end

  test "I can store functions in a variable" do
    a_function = &ElixirPlayground.sum/2
    assert a_function.(1,2) == 3
  end

  test "I can use the pipe operator to use the result for the next call" do
    powie = &:math.pow/2
    assert ElixirPlayground.sum(3,4) |> powie.(2) == 49
  end

  test "I can use imported functions from other modules" do
    assert say_somethng() == "Somethng!"
  end
end
