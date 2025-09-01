defmodule Main do

  def main() do
  calcular_valor_inventario()
  end

  def ingresar_nombre_libro() do
    "Ingrese el nombre del libro:"
    |>Util.input(:string)
  end

  def ingresar_cantidad_dispo() do
    "Ingrese la cantidad de unidades disponibles:"
    |>Util.input(:integer)
  end

  def ingresar_precio_und() do
    "Ingrese el precio unitario:"
    |>Util.input(:float)
  end

  def calcular_valor_inventario() do
    titulo= ingresar_nombre_libro()
    cantidad= ingresar_cantidad_dispo()
    precio= trunc(ingresar_precio_und())
    total= trunc(cantidad*precio)|> Util.miles()
    Util.show_message("Ingrese el titulo del libro: #{titulo}\nIngrese la cantidad de unidades disponibles: #{cantidad}\nIngrese el precio unitario: #{precio}\nEl libro #{titulo} tiene #{cantidad} unidades, con un valor total de $#{total}")
  end
end
Main.main()
