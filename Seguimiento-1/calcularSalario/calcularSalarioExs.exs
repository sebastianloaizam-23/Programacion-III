defmodule CalcularSalarioExs do
  def calcular_salario([nombre, horas_str, valor_str]) do
    horas = String.to_integer(horas_str) # Convertir horas a entero
    valor = String.to_integer(valor_str) # Convertir valor a entero
    salario_base = min(horas, 160) * valor # Calcular salario base para las primeras 160 horas
    horas_extra = max(horas - 160, 0) # Calcular horas extra si las hay
    pago_extra = horas_extra * valor * 1.25 # Calcular pago extra al 25% adicional
    salario_neto = salario_base + pago_extra # Calcular salario neto

    "Empleado: #{nombre}\nSalario neto: $#{Float.round(salario_neto, 2)}" # Formatear el resultado
  end
end

IO.puts(CalcularSalarioExs.calcular_salario(System.argv())) # Ejecutar la función con los argumentos de la línea de comandos
