defmodule MultiplesTest do
  use ExUnit.Case
  doctest Multiples

  test "multiples of 3 and 5 below 10" do
    assert Multiples.multiples_to(9, [3, 5])  == 23
  end

  test "multiples of 3 and 5 below 1000" do
    assert Multiples.multiples_to(999, [3, 5])  == 233168
  end
end
