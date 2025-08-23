defmodule LongitudPalabraExs do
  @moduledoc """
  Módulo para calcular la longitud de una palabra
  """
  @doc """
  Calcula la longitud de una palabra
  ## Parámetros
    - mensaje: String con la palabra
  ## Retorna
    - Entero con la longitud del mensaje
  """
  def contar_letras(mensaje) do
    mensaje
    |> String.replace(" ", "") # Elimina espacios si solo quieres letras
    |> String.length()
  end
end
# Ejecutar la función con los argumentos de la línea de comandos
mensaje = Enum.join(System.argv(), " ")
IO.puts(LongitudPalabraExs.contar_letras(mensaje))
