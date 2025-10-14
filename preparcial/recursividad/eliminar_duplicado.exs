defmodule SinRepetidos do
  # Caso base: lista vacía
  def sin_repetidos([]), do: []

  # Caso recursivo
  def sin_repetidos([head | tail]) do
    # Quitamos los repetidos del resto de la lista
    lista = sin_repetidos(tail)

    # Si el número ya está en la lista, no lo agregamos
    if esta_en_lista(head, lista) do
      lista
    else
      [head | lista]
    end
  end

  # Función que revisa si un elemento está en una lista
  def esta_en_lista(_, []), do: false
  def esta_en_lista(x, [head | tail]) do
    if x == head do
      true
    else
      esta_en_lista(x, tail)
    end
  end
end
IO.inspect SinRepetidos.sin_repetidos([3, 5, 3, 7, 5, 9, 7])
