defmodule Test do

  def analizar(num) when is_integer(num) do
    cond do
      num > 0 -> "#{num} es positivo"
      num < 0 -> "#{num} es negativo"
      true -> "es cero"
    end
  end

  def run_secuencial(list) do
    Enum.map(list, fn x -> analizar(x) end)
    |> Enum.each(fn resultado ->
      IO.puts(resultado)
    end)
  end

  def run_concurrente(list) do

    tasks =
      Enum.map(list, fn ->
        Task.async(fn -> analizar(x) end)
      end)

    Enum.each(tasks, fn task ->
        resultado = Task.await(task)
        IO.puts(resultado)
      end)
    end

    respuestas = Task.await_many(tasks)
    Enum.each(respuestas, fn respuesta ->
      IO.puts(respuesta)
    end)

  end

  def run do
    list = [10, -5, 0, 3, -1]
    tiempoSecuencial = Benchmark.determinar_tiempo_ejecucion(
      {Test, :run_secuencial, [list]})

    IO.puts("Tiempo secuencial: #{tiempoSecuencial} microsegundos")
  end





Test.run()
