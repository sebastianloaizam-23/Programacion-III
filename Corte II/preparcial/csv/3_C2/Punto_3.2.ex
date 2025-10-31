defmodule Docente do
  defstruct id: nil, nombre: nil, categoria: nil

  def crear(id, nombre, categoria) do
    %Docente{id: id, nombre: nombre, categoria: categoria}
  end

  def escribir_csv(lista_docentes, nombre_archivo) do
    header = "id,nombre,categoria\n"

    contenido =
      lista_docentes
      |> Enum.map(fn %Docente{id: id, nombre: nombre, categoria: categoria} ->
        "#{id},#{nombre},#{categoria}\n"
      end)
      |> Enum.join("")

    File.write(nombre_archivo, header <> contenido)
  end

  def leer_csv(nombre_archivo) do
    case File.read(nombre_archivo) do
      {:ok, contenido} ->
        String.split(contenido, "\n", trim: true)
        |> Enum.map(fn fila ->
          case String.split(fila, ",") do
            [id, nombre, categoria] -> crear(id, nombre, categoria)
            _ -> nil
          end
        end)
        |> Enum.filter(& &1)
        |> Enum.drop(1) # Eliminar el encabezado

      {:error, razon} ->
        IO.puts("Error al leer el archivo: #{razon}")
        []
    end
  end

  def filtrar_titulares(lista_docentes) do
    Enum.filter(lista_docentes, fn docente ->
      docente.categoria == "Titular"
    end)
  end
end
