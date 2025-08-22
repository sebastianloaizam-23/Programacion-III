defmodule Util do
  def mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end

  def pedir_dato() do
    IO.gets("Ingrese un dato: ")
    |> String.trim()
  end
end
