defmodule ConvertirMensajeExs do
  def convertir_mayuscula(mensaje) do
    String.upcase(mensaje)
  end
end

mensaje = Enum.join(System.argv(), " ")
IO.puts(ConvertirMensajeExs.convertir_mayuscula(mensaje))
