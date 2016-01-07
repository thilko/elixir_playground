defmodule Geom do
  @moduledoc """
    I would like to put wonderful methods in here.
  """

  @vsn 0.1

  @spec area(atom(), number(), number()) :: number()

  @doc """
    Some method documentation.
  """
  def area(:rectangle, length, width) when length > 0 and width > 0 do
    length * width
  end

  def area(:triangle, base, height) when base > 0 and height > 0 do
    base * height / 2.0
  end

  def area(:ellipse, major, minor) when major > 0 and minor > 0 do
    :math.pi() * major * minor
  end

  def area(_, major, minor) when major > 0 and minor > 0 do
    42
  end

  def sum( a \\ 3, b, c \\ 7) do
    a + b + c
  end
end
