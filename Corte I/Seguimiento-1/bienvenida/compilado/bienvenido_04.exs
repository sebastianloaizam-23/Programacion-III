defmodule Bienvenido do

  def main() do

    Util.pedir_datos()
    |> Util.mostrar_mensaje()
  end

end

Bienvenido.main()
