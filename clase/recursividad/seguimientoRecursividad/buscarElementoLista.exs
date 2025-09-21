defmodule BuscarElementoLista do

  def contiene([], valor) do
    IO.puts("El elemento #{valor} no se encuentra en la lista")
  end

  def contiene([head |_tail], valor) when head==valor do
    IO.puts("El elemento #{valor} se encuentra en la lista")
  end

  def contiene([_head | tail], valor) do
    contiene(tail, valor)
  end
end
BuscarElementoLista.contiene([1, 2, 3, 4, 5], 3)

