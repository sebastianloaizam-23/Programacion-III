defmodule Main do
  def main do
    p1 = Producto.crear("A1", "Pan", "10")
    p2 = Producto.crear("A2", "Leche", "250")
    p3 = Producto.crear("A3", "Huevos", "800")

    lista = [p1, p2, p3]

    Producto.escribir_csv(lista, "productos.csv")

    IO.puts("Archivo productos.csv generado correctamente.")
    IO.inspect(Producto.leer_csv("productos.csv"))
  end
end

Main.main()
