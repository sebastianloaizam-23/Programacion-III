defmodule Kw1 do
  def main do

    producto = [nombre: "Vive100", precio: 3000, stock: 20]

    IO.inspect("El producto es #{producto[:nombre]} , su precio es #{producto[:precio]}, y su stock es #{producto[:stock]}")

  end
end
Kw1.main()
