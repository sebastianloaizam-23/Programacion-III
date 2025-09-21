defmodule CalcularSalarioExs do
  @moduledoc """

  Módulo para calcular el salario neto de un empleado basado en horas trabajadas y valor por hora.

  """

  @doc """
  Calcula el salario neto de un empleado.
  ## Parámetros
    - args: Lista de argumentos [nombre, horas_trabajadas, valor_por_hora]
  ## Retorna
    - String con el nombre del empleado y su salario neto.
  """

  def calcular_salario([nombre, horas_str, valor_str]) do
    horas = String.to_integer(horas_str)
    valor = String.to_integer(valor_str)
    salario_base = min(horas, 160) * valor
    horas_extra = max(horas - 160, 0)
    pago_extra = horas_extra * valor * 1.25
    salario_neto = salario_base + pago_extra

    "Empleado: #{nombre}\nSalario neto: $#{Float.round(salario_neto, 2)}"
  end
end

IO.puts(CalcularSalarioExs.calcular_salario(System.argv()))
