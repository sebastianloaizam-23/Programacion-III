defmodule Proceso do

  @cantidad_procesos_internos 5
  def main do
    Benchmark.determinar_tiempo_ejecucion({Proceso, :simulacion, [@cantidad_procesos_internos]})
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  def simulacion(cantidad_procesos_internos) do
    datos_prueba = [{"A", 2500}, {"\tB", 1500}, {"\t\tC", 500}, {"\t\t\tD", 3500}]
    Enum.each(datos_prueba, fn valor ->
    simulando_proceso(valor, cantidad_procesos_internos)
  end)
  end

  def simulando_proceso({mensaje, demora}, cantidad_procesos_internos) do
    IO.puts("#{mensaje} -> (Inicia)")
    Enum.each(1..cantidad_procesos_internos, fn i ->
    :timer.sleep(demora)
    IO.puts("\t#{mensaje}-#{i}")
    end)
    IO.puts("#{mensaje} -> (Finalizada)")
  end

  def generar_mensaje(tiempo), do: "\nEl tiempo de ejecución es de #{tiempo} microsegundos."
end
Proceso.main()

