defmodule Recursivo do
  def subconjunto_suma([], 0), do: []
  def subconjunto_suma([], _objetivo), do: nil

  def subconjunto_suma([head | tail], objetivo) when head <= objetivo do
    incluir = subconjunto_suma(tail, objetivo - head)
    excluir = subconjunto_suma(tail, objetivo)

    cond do
      incluir != nil -> [head | incluir]
      true -> excluir
    end
  end

  def subconjunto_suma([_head | tail], objetivo) do
    subconjunto_suma(tail, objetivo)
  end
end

IO.inspect Recursivo.subconjunto_suma([2, 4, 6, 8], 10)
