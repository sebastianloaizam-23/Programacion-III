defmodule Factorial do
  def factorial(n, 1) when n <= 0 do
    IO.puts("ERROR: El numero debe ser mayor a 0")
  end

  def factorial(0, suma) do
    IO.puts("El factorial del numero ingresado es #{suma}")
  end

  def factorial(n, suma) do
    factorial(n - 1, n * suma)
  end

end

Factorial.factorial(5, 1)
