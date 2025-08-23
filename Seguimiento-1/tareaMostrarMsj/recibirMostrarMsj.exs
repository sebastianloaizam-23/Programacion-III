defmodule RecibirMostrarMsj do
  @moduledoc """
  Módulo para ejecutar un programa Java que muestra un mensaje.
  """
  @doc """
  Ejecuta el programa Java que muestra un mensaje.
  ## Retorna
    - Tupla con el resultado de la ejecución del comando
  """
  def mostrar_mensaje() do
    System.cmd("java", ["mostrarMensaje"])
  end
end

RecibirMostrarMsj.mostrar_mensaje()
