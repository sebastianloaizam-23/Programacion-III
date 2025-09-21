defmodule SumaLista do

  def suma([], suma) do
    IO.puts("La suma de los elementos de la lista es #{suma}")
  end

  def suma([head | tail], suma) do
    suma(tail, head + suma)
  end

end

SumaLista.suma([1, 2, 3, 4, 5], 0)

