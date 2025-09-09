defmodule Lista1 do

  def main do
    #Crear una lista con los nombres de 5 ciudades
  list = [Armenia, Bogota, Cali, Medellin, Barranquilla]

  #Separar la Lista en cabeza y cola y luego imprimirla
  [head | tail] = list
  IO.inspect(head)
  IO.inspect(tail)

end

end
Lista1.main()
