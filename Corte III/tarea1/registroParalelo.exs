defmodule RegistroParalelo do
  def main do
    estudiantes = [
      {"Ana", 2000},
      {"Luis", 1500},
      {"María", 1000},
      {"Carlos", 2500}
    ]

    inicio = :os.system_time(:microsecond)

    # Se lanza un proceso para cada registro
    tareas =
      Enum.map(estudiantes, fn {nombre, demora} ->
        Task.async(fn -> registrar_estudiante(nombre, demora) end)
      end)

    # Espera a que todos terminen
    Enum.each(tareas, &Task.await(&1))

    fin = :os.system_time(:microsecond)
    IO.puts("\nTiempo total paralelo: #{fin - inicio} microsegundos")
  end

  def registrar_estudiante(nombre, demora) do
    IO.puts("Registrando estudiante #{nombre}...")
    :timer.sleep(demora)
    IO.puts("✔️ Estudiante #{nombre} registrado.")
  end
end

RegistroParalelo.main()
