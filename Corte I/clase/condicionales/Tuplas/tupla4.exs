defmodule Tupla4 do

  def main do
    #Destructurar una tupla y asignar sus valores a variables, luego imprimir las variables
  {:usuario, nombre, edad} = {:usuario, "Ana", 25}
  IO.inspect("Nombre: #{nombre}, Edad: #{edad}")

    end
end

Tupla4.main()
