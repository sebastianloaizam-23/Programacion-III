defmodule Lista4 do

  def main do
    lista = [1, 2, 3, 4, 5]
    IO.inspect(multiplicar(lista))
  end

  def multiplicar([]), do: []

  def multiplicar([head | tail]) do
    [head * 3 | multiplicar(tail)]
  end

end
Lista4.main()
