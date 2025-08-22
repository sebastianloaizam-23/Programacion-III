defmodule LongitudPalabraExs do
  def contar_letras(mensaje) do
    mensaje
    |> String.replace(" ", "") # Elimina espacios si solo quieres letras
    |> String.length()
  end
end

mensaje = Enum.join(System.argv(), " ")
IO.puts(LongitudPalabraExs.contar_letras(mensaje))
