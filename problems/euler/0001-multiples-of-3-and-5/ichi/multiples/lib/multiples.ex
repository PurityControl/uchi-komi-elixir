defmodule Multiples do
  def multiples_to limit, divisors do
    multiples(:lists.seq(1,limit), divisors, 0)
  end

  defp multiples([], _divisors, total), do: total

  defp multiples([head | tail], divisors, total) do
    if Enum.any?(divisors, fn(x) -> rem(head, x) == 0 end) do
      multiples(tail, divisors, total + head)
    else
      multiples(tail, divisors, total)
    end
  end
end
