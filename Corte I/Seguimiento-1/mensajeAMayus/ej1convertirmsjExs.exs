defmodule ConvertirMensajeExs do
  @moduledoc """
  Módulo para convertir un mensaje a mayúsculas
  """
  @doc """
  Convierte un mensaje a mayúsculas
  ## Parámetros
    - mensaje: String con el mensaje
  ## Retorna
    - String con el mensaje en mayúsculas
  """

  def convertir_mayuscula(mensaje) do
    String.upcase(mensaje)
  end
end

mensaje = Enum.join(System.argv(), " ")
IO.puts(ConvertirMensajeExs.convertir_mayuscula(mensaje))
