# Asi se define un modulo en Elixir, la convencion es usar CamelCase

defmodule Secuencial do

  # Asi se define una funcion  PUBLICA en Elixir, la convencion es usar snake_case
  def mostrar_mensaje() do
    "Función pública "
    |> mensaje_privado()
  end


  defp mensaje_privado(mensaje) do
    mensaje
    |> IO.puts()
  end
end


Secuencial.mostrar_privado("Funcion privada")

# Asi se llama a una funcion publica de un modulo
Secuencial.mostrar_mensaje()
