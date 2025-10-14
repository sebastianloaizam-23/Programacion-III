defmodule MainClientes do
  def main do
    clientes_ejemplo = [
      %Cliente{id: "1", nombre: "JUAN PEREZ", correo: "Juan.Perez@GMAIL.COM"},
      %Cliente{id: "2", nombre: "maría garcía", correo: "MARIA.Garcia@hotmail.com"},
      %Cliente{id: "3", nombre: "carlos lópez rodríguez", correo: "Carlos.Lopez@YAHOO.COM"},
      %Cliente{id: "4", nombre: "ANA MARTINEZ", correo: "ana.martinez@gmail.com"},
      %Cliente{id: "5", nombre: "pedro gonzalez", correo: "PEDRO.GONZALEZ@GMAIL.COM"}
    ]

    unless File.exists?("clientes.csv") do
      escribir_clientes_ejemplo(clientes_ejemplo)
    end

    IO.puts("Leyendo archivo clientes.csv...")
    clientes_leidos = Cliente.leer_csv("clientes.csv")
    IO.inspect(clientes_leidos)

    IO.puts("Normalizando datos...")
    clientes_normalizados = Cliente.normalizar_clientes(clientes_leidos)
    IO.inspect(clientes_normalizados)


    IO.puts("Escribiendo clientes_normalizado.csv...")
    Cliente.escribir_csv_normalizado(clientes_normalizados, "clientes_normalizado.csv")
    IO.puts("Archivo clientes_normalizado.csv creado exitosamente")
  end

  defp escribir_clientes_ejemplo(clientes) do
    header = "id,nombre,correo\n"

    contenido =
      clientes
      |> Enum.map(fn %Cliente{id: id, nombre: nombre, correo: correo} ->
        "#{id},#{nombre},#{correo}\n"
      end)
      |> Enum.join("")

    File.write("clientes.csv", header <> contenido)
    IO.puts("Archivo clientes.csv de ejemplo creado")
  end
end
MainClientes.main()
