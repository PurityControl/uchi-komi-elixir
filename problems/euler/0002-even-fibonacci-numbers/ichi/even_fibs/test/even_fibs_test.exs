defmodule EvenFibsTest do
  use ExUnit.Case
  doctest EvenFibs

  test "euler problem" do
    assert EvenFibs.sum_even_fibs_to(4000000) == 4613732
  end
end
