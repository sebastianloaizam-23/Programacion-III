defmodule Precio do
  @precio

  def calcular_precio(%Producto{precio_sin_iva: precio_sin_iva, iva: iva}) do
    precio_final(producto)= producto.precio_sin_iva * (1 + producto.iva)
  end
end
