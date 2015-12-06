defmodule EvenFibs do
  def sum_even_fibs_to limit do
    fibs = fibs_to 4000000
    Enum.sum(for x <- fibs, rem(x, 2) == 0, do: x)
  end

  defp fibs_to limit do
    fibs_to limit, [2, 1, 1]
  end

  defp fibs_to limit, [first , second | rest] do
    if first + second > limit do
      [first , second |rest]
    else
      fibs_to limit, [first + second , first , second | rest]
    end
  end
end
