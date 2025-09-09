defmodule Kw2 do

  def main do

    #Crear un keyword list con información de un producto (nombre, precio, stock), luego imprimir el precio del producto
    producto=[nombre: "Camisa", precio: 400000, stock: 12]
    IO.inspect("El precio del producto es #{producto[:precio]}")
  end

end
Kw2.main()
