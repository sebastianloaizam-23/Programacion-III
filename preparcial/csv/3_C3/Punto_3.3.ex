defmodule Asistencia do
  defstruct fecha: nil, estudiante: nil, estado: nil

  def crear(fecha, estudiante, estado) do
    %Asistencia{fecha: fecha, estudiante: estudiante, estado: estado}
  end

  def leer_csv(nombre_archivo) do
    case File.read(nombre_archivo) do
      {:ok, contenido} ->
        String.split(contenido, "\n", trim: true)
        |> Enum.map(fn fila ->
          case String.split(fila, ",") do
            [fecha, estudiante, estado] -> crear(fecha, estudiante, estado)
            _ -> nil
          end
        end)
        |> Enum.filter(& &1)
        |> Enum.drop(1)

      {:error, razon} ->
        IO.puts("Error al leer el archivo: #{razon}")
        []
    end
  end

  def consolidar_asistencia(lista_asistencias) do
    lista_asistencias
    |> Enum.group_by(fn asistencia -> asistencia.estudiante end)
    |> Enum.map(fn {estudiante, asistencias} ->
      total_p = Enum.count(asistencias, fn a -> a.estado == "P" end)
      total_t = Enum.count(asistencias, fn a -> a.estado == "T" end)
      total_a = Enum.count(asistencias, fn a -> a.estado == "A" end)

      %{
        estudiante: estudiante,
        total_P: total_p,
        total_T: total_t,
        total_A: total_a
      }
    end)
  end

  def escribir_resumen_csv(lista_resumen, nombre_archivo) do
    header = "estudiante,total_P,total_T,total_A\n"

    contenido =
      lista_resumen
      |> Enum.map(fn resumen ->
        "#{resumen.estudiante},#{resumen.total_P},#{resumen.total_T},#{resumen.total_A}\n"
      end)
      |> Enum.join("")

    File.write(nombre_archivo, header <> contenido)
  end
end
