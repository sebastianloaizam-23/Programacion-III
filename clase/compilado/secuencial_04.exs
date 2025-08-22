# Asi se define un modulo en Elixir, la convencion es usar CamelCase

defmodule Secuencial do

  # Asi se define una funcion  PUBLICA en Elixir, la convencion es usar snake_case
  def main() do
    "Función pública "
    |> Util.mostrar_mensaje()
  end

end




# Asi se llama a una funcion publica de un modulo
Secuencial.main()
