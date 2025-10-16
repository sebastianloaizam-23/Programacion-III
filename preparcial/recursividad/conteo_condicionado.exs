defmodule Factorial do
  def factorial(n, 1) when n <= 0 do
    IO.puts("ERROR: El numero debe ser mayor a 0")
  end



  def factorial(n, suma) do
    factorial(n - 1, n * suma)
  end

end

Factorial.factorial(4, 1)
