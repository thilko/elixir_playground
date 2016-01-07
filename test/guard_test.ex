defmodule GuardTest do
  use ExUnit.Case

  test "I can use guards" do
    assert print_name("Thilko") == "You name is Thilko"
    assert print_name("") == "You have no name"
  end

  def print_name(name) when String.length(name) > 0 do
    "Your name is ${name}"
  end

  def print_name(name) when String.length(name) == 0 do
    "You have no name"
  end

end
