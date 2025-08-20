defmodule Bienvenido do

  def mostrar_mensaje() do

    Util.pedir_datos()
    |> Util.mostrar_mensaje()
  end

end

Bienvenido.mostrar_mensaje()
