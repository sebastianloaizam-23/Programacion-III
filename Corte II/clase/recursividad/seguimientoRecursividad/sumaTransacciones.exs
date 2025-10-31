
defmodule SumaTracciones do
  def sumaTraccion([], resultado) do
    IO.puts("La suma de las tracciones es #{resultado}")
  end

  def sumaTraccion([head | tail], resultado) when head > 0 do
    IO.puts("Se suma el ingreso de  $#{head}, balance parcial: #{resultado + head}")
    sumaTraccion(tail, resultado + head)
  end

  def sumaTraccion([head | tail], resultado) when head <= 0 do
    IO.puts("Se resta el gasto de $#{head}, balance parcial: #{resultado + head}")
    sumaTraccion(tail, resultado + head)
  end
end

SumaTracciones.sumaTraccion([100, -20, -30, 50], 0)
