defmodule RecibirMostrarMsj do
  def mostrar_mensaje() do
    System.cmd("java", ["mostrarMensaje"])
  end
end

RecibirMostrarMsj.mostrar_mensaje()
