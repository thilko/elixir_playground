defmodule BasicsTest do
  use ExUnit.Case

  test "I can use tuples" do
    car = {"Caddy", 150}
    car = put_elem(car, 1, :red)

    assert elem(car, 1) == :red
  end
end
