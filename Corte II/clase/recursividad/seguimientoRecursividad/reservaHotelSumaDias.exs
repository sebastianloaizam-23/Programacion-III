defmodule ContarDias do

  def contar_dias([], dias) do #caso base, cuando la lista está vacía
    IO.puts("El total de dias reservados es #{dias}")
    dias
  end

  def contar_dias([head |tail], dias) do #caso recursivo, entra a la lista y suma los días de la cabeza al acumulador
    contar_dias(tail, dias+head.dias)
  end

end

#Se define la lista de reservas
reservas = [
  %{nombre: "Juan", dias: 3},
  %{nombre: "María", dias: 5},
  %{nombre: "Pedro", dias: 2}
]
#Se llama a la función con la lista de reservas y un acumulador inicial de 0 días
ContarDias.contar_dias(reservas, 0)
