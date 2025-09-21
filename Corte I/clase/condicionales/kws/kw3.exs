defmodule Kw3 do

  def main do
    producto= [nombre: "Camisa", precio: 400000, stock: 12]
    nueva_caracteristica= [color: "Azul"]
    producto_actualizado=producto ++ nueva_caracteristica
    IO.inspect(producto_actualizado)
  end

end
Kw3.main()
