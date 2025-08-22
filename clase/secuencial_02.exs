# Asi se define un modulo en Elixir, la convencion es usar CamelCase

defmodule Secuencial do

  # Funcion publica en una linea -> SnakeCase
  def mostrar_mensaje(), do: "Función pública en una sola linea" |> IO.puts()
  end


# Asi se llama a una funcion publica de un modulo
Secuencial.mostrar_mensaje()
