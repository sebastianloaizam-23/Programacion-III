defmodule Cliente do
  defstruct id: nil, nombre: nil, correo: nil

  def crear(id, nombre, correo) do
    %Cliente{id: id, nombre: nombre, correo: correo}
  end

  def leer_csv(nombre_archivo) do
    case File.read(nombre_archivo) do
      {:ok, contenido} ->
        String.split(contenido, "\n", trim: true)
        |> Enum.map(fn fila ->
          case String.split(fila, ",") do
            [id, nombre, correo] -> crear(id, nombre, correo)
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

  def normalizar_nombre(nombre) do
    nombre
    |> String.downcase()
    |> String.split(" ")
    |> Enum.map(fn palabra ->
      if String.length(palabra) > 0 do
        String.capitalize(palabra)
      else
        palabra
      end
    end)
    |> Enum.join(" ")
  end

  def normalizar_correo(correo) do
    String.downcase(correo)
  end

  def normalizar_clientes(lista_clientes) do
    Enum.map(lista_clientes, fn cliente ->
      %Cliente{
        id: cliente.id,
        nombre: normalizar_nombre(cliente.nombre),
        correo: normalizar_correo(cliente.correo)
      }
    end)
  end

  def escribir_csv_normalizado(lista_clientes, nombre_archivo) do
    header = "id,nombre,correo\n"

    contenido =
      lista_clientes
      |> Enum.map(fn %Cliente{id: id, nombre: nombre, correo: correo} ->
        "#{id},#{nombre},#{correo}\n"
      end)
      |> Enum.join("")

    File.write(nombre_archivo, header <> contenido)
  end
end
