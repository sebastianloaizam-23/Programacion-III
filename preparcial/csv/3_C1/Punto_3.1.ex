defmodule Producto do
  defstruct codigo: "none", nombre: "none", precio: 0.0, iva: 0.0, precio_total: 0.0

  def crear(codigo, nombre, precio) do
    {precio_f, _} = Float.parse(precio)
    iva = precio_f * 0.19
    precio_total = precio_f + iva
    %Producto{codigo: codigo, nombre: nombre, precio: precio_f, iva: iva, precio_total: precio_total
    }
  end

  def escribir_csv(lista_productos, file_name) do
    header = "codigo,nombre,precio,iva,precio_total\n"

    contenido =
      lista_productos
      |> Enum.map(fn %Producto{codigo: c, nombre: n, precio: p, iva: i, precio_total: pt} ->
        "#{c},#{n},#{p},#{i},#{pt}\n"
      end)
      |> Enum.join("")
    File.write(file_name, header <> contenido, [:append])
  end

  def leer_csv(file_name) do
    case File.read(file_name) do
      {:ok, contenido} ->
        String.split(contenido, "\n", trim: true)
        |> Enum.map(fn row ->
          [codigo, nombre, precio, iva, precio_total] = String.split(row, ",")
          %Producto{ codigo: codigo,
            nombre: nombre,
            precio: String.to_float(precio),
            iva: String.to_float(iva),
            precio_total: String.to_float(precio_total)
          }
        end)
        |> Enum.drop(1)

      {:error, reason} ->
        IO.puts("Error al leer el archivo: #{reason}")
        []
    end
  end
end
