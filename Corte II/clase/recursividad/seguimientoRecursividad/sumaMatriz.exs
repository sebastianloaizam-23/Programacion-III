defmodule SumaMatriz do
  # Suma de una sola lista (fila)
  def suma_lista([]), do: 0
  def suma_lista([head | tail]) do
    head + suma_lista(tail)
  end

  # Suma de todas las filas de la matriz
  def suma_matriz([]), do: 0
  def suma_matriz([fila | resto]) do
    suma_lista(fila) + suma_matriz(resto)
  end
end

matriz = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ]

IO.puts("La suma es: #{SumaMatriz.suma_matriz(matriz)}")

