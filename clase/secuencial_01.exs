# Asi se define un modulo en Elixir, la convencion es usar CamelCase

defmodule Secuencial do

  # Asi se define una funcion  PUBLICA en Elixir, la convencion es usar snake_case
  def mostrar_mensaje() do
    "Función pública"
    |> IO.puts()
  end

end

# Asi se llama a una funcion publica de un modulo
Secuencial.mostrar_mensaje()
