defmodule PermutacionLista do

  def permutacion([], resultado) do
    IO.puts("Una permutacion es #{Enum.join(resultado, ", ")}")
  end

  def permutacion(lista, resultado) do
    permutacion_aux(lista, resultado, [])
  end

  defp permutacion_aux([], _resultado, _procesados), do: :ok

  defp permutacion_aux([h | t], resultado, procesados) do
    resto = procesados ++ t
    permutacion(resto, resultado ++ [h])
    permutacion_aux(t, resultado, procesados ++ [h])
  end
end

PermutacionLista.permutacion([1, 2, 3], [])
