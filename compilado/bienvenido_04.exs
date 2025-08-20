defmodule Bienvenido do

  def mostrar_mensaje() do
    "Bienvenido a la organización Once Ltda"
    |> Util.mostrar_mensaje()
  end

end

Bienvenido.mostrar_mensaje()
