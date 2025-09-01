defmodule Main do

  def main() do
    calcular_rendimiento()
  end

  def ingresar_nombre_conductor() do
    "Ingrese el nombre del conductor: "
    |> Util.input(:string)
  end

  def ingresar_distancia_recorrida() do
    "Ingrese la distancia recorrida en Kms: "
    |>Util.input(:float)
  end

  def ingresar_combustible_consumido() do
    "Ingrese la cantidad de combustible consumido en litros:"
    |>Util.input(:float)
  end

  def calcular_rendimiento() do
    nombre=ingresar_nombre_conductor()
    distancia=ingresar_distancia_recorrida()
    combustible=ingresar_combustible_consumido()
    rendimiento= Float.round(distancia/combustible, 2)
    Util.show_message("El rendimiento de combustible de #{nombre} es de  #{rendimiento} kilometros por litro")
  end

end
Main.main()
