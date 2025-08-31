
defmodule Bienvenida do


  def mostrar_mensaje() do
    "Bienvenidos a la empresa Once Ltda e"
    |> IO.puts()
  end

end

# Asi se llama a una funcion publica de un modulo
Bienvenida.mostrar_mensaje()
