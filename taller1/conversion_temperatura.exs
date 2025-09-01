defmodule Main do

  def main() do
    convertir_grados()
  end

  def ingresar_nombre() do
    "Ingrese su nombre:"
    |>Util.input(:string)
  end

  def ingresar_temperatura_celsius() do
    "Ingrese la temperatura en grados Celsius:"
    |>Util.input(:float)
  end

  def convertir_grados() do
    nombre= ingresar_nombre()
    celsius= ingresar_temperatura_celsius()
    f=Float.round((celsius*9/5)+32, 1)
    k= Float.round((celsius+273.15), 1)
    Util.show_message("Ingrese su nombre: #{nombre}\nIngrese la temperatura en °C: #{celsius}\n#{nombre}, la temperatura es:\n- #{f} °F\n- #{k} K")
  end


end
Main.main()
