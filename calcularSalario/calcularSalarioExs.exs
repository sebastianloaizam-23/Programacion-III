defmodule CalcularSalarioExs do
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
