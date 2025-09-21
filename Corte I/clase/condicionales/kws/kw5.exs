defmodule Kw5 do

  def main do
    lista = [usuario: "Carlos", activo: true, rol: "admin"]

    Enum.each(lista, fn {clave, valor} ->
      IO.puts("clave: #{clave}, valor: #{valor}")
    end)
  end

end
Kw5.main()
