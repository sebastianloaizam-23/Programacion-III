defmodule Combinacion do
  def buscar([], _objetivo), do:
    {:error, :sin_solucion}

  def buscar(_lista, 0), do:
    []

  def buscar([num | resto], objetivo) do
    # Intentar con el número incluido
    if objetivo - num >= 0 do
      resultado = buscar(resto, objetivo - num)
      if resultado != {:error, :sin_solucion} do
        [num | resultado]
      else
        buscar(resto, objetivo)
      end
    else
      buscar(resto, objetivo)
    end
  end
end

IO.inspect Combinacion.buscar([2, 4, 6, 8], 10)


IO.inspect Combinacion.buscar([1, 3, 5], 12)
