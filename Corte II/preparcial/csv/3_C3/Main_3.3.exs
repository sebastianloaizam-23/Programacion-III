defmodule MainAsistencia do
  def main do
    asistencias_ejemplo = [
      %Asistencia{fecha: "2024-01-01", estudiante: "Juan Pérez", estado: "P"},
      %Asistencia{fecha: "2024-01-01", estudiante: "María García", estado: "T"},
      %Asistencia{fecha: "2024-01-01", estudiante: "Carlos López", estado: "A"},
      %Asistencia{fecha: "2024-01-02", estudiante: "Juan Pérez", estado: "P"},
      %Asistencia{fecha: "2024-01-02", estudiante: "María García", estado: "P"},
      %Asistencia{fecha: "2024-01-02", estudiante: "Carlos López", estado: "T"},
      %Asistencia{fecha: "2024-01-03", estudiante: "Juan Pérez", estado: "A"},
      %Asistencia{fecha: "2024-01-03", estudiante: "María García", estado: "P"},
      %Asistencia{fecha: "2024-01-03", estudiante: "Ana Martínez", estado: "P"}
    ]

    unless File.exists?("asistencia.csv") do
      escribir_asistencia_ejemplo(asistencias_ejemplo)
    end

    IO.puts("Leyendo archivo asistencia.csv...")
    asistencias_leidas = Asistencia.leer_csv("asistencia.csv")
    IO.inspect(asistencias_leidas)

    IO.puts("Consolidando asistencia...")
    resumen = Asistencia.consolidar_asistencia(asistencias_leidas)
    IO.inspect(resumen)

    IO.puts("Escribiendo resumen_asistencia.csv...")
    Asistencia.escribir_resumen_csv(resumen, "resumen_asistencia.csv")
    IO.puts("Archivo resumen_asistencia.csv creado exitosamente")
  end

  defp escribir_asistencia_ejemplo(asistencias) do
    header = "fecha,estudiante,estado\n"

    contenido =
      asistencias
      |> Enum.map(fn %Asistencia{fecha: fecha, estudiante: estudiante, estado: estado} ->
        "#{fecha},#{estudiante},#{estado}\n"
      end)
      |> Enum.join("")

    File.write("asistencia.csv", header <> contenido)
    IO.puts("Archivo asistencia.csv de ejemplo creado")
  end
end
MainAsistencia.main()
