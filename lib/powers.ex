defmodule Powers do
  import Kernel, except: [raise: 2]

  def raise(x, n) when n >= 0 do
    raise(x, x, n)
  end

  def raise(x, n) when n < 0 do
    1.0 / raise(x, x, n * -1)
  end

  defp raise(acc, x, n) when n == 0 do
    1
  end

  defp raise(acc, x, n) when n <= 1 do
    acc
  end

  defp raise(acc, x, n) when n > 1 do
    raise(acc * x,x,  n - 1)
  end

  def nth_root(x, n) do
    nth_root(x, n, x / 2.0)
  end

  defp nth_root(x, n, a) do
    f = raise(a, n) - x
    f_prime = n * raise(a, n-1)
    next = a - f / f_prime
    change = abs(a - next)
    cond do
      change < 1.0e-8 -> next
      true -> nth_root(x, n, next)
    end
  end

end
