defmodule MinMax do
  # Caso base lista vacia
  def min_max([]), do: {:error, :lista_vacia}

  # Caso base lista con solo un numero
  def min_max([x]), do: {x, x}

  # Caso recursivo
  def min_max([head | tail]) do
    {min_tail, max_tail} = min_max(tail)

    min= if head < min_tail, do: head, else: min_tail
    max= if head > max_tail, do: head, else: max_tail

    {min, max}

  end
end
IO.inspect MinMax.min_max([4, 1, 9, 2, 7])


IO.inspect MinMax.min_max([])
