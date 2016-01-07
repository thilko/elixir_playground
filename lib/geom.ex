defmodule Geom do
  @moduledoc """
    I would like to put wonderful methods in here.
  """

  @vsn 0.1

  @spec area(atom(), number(), number()) :: number()

  @doc """
    Some method documentation.
  """
  def area(:rectangle, length, width) do
    length * width
  end

  def area(:triangle, base, height) do
    base * height / 2.0
  end

  def area(:ellipse, major, minor) do
    :math.pi() * major * minor
  end

  def sum( a \\ 3, b, c \\ 7) do
    a + b + c
  end
end
