defmodule RegistroSecuencial do
  def main do
    estudiantes = [
      {"Ana", 2000},
      {"Luis", 1500},
      {"María", 1000},
      {"Carlos", 2500}
    ]

    inicio = :os.system_time(:microsecond)
    Enum.each(estudiantes, fn {nombre, demora} ->
      registrar_estudiante(nombre, demora)
    end)
    fin = :os.system_time(:microsecond)

    IO.puts("\nTiempo total secuencial: #{fin - inicio} microsegundos")
  end

  def registrar_estudiante(nombre, demora) do
    IO.puts("Registrando estudiante #{nombre}...")
    :timer.sleep(demora)
    IO.puts("✔️ Estudiante #{nombre} registrado.")
  end
end

RegistroSecuencial.main()
