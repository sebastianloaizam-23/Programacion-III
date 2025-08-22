defmodule SumaPotencias do
  def suma_cuadrados(lista_numeros) do
    lista_numeros
    |> Enum.map(fn n -> n * n end) #eleva cada número al cuadrado
    |> Enum.sum() #suma los cuadrados
  end
end

# IMplementación de ejemplo
numeros = [1, 2, 3, 4, 5]
resultado = SumaPotencias.suma_cuadrados(numeros)
IO.puts("La suma de los cuadrados es: #{resultado}")
