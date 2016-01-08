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

end
