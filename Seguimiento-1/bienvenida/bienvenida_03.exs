
defmodule Bienvenida do
  def mostrar_mensaje() do
    "Bienvenidos a la empresa Once Ltda"
    |> mensaje_privado()
  end

  defp mensaje_privado(mensaje) do
    mensaje
    |> IO.puts()
  end
end



# Asi se llama a una funcion publica de un modulo
Bienvenida.mostrar_mensaje()
