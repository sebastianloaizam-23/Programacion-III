defmodule Main do
  def main do
    # Creación de docentes de ejemplo
    d1 = %Docente{id: "1", nombre: "Juan Pérez", categoria: "Asistente"}
    d2 = %Docente{id: "2", nombre: "María García", categoria: "Titular"}
    d3 = %Docente{id: "3", nombre: "Carlos López", categoria: "Asociado"}
    d4 = %Docente{id: "4", nombre: "Ana Martínez", categoria: "Titular"}
    d5 = %Docente{id: "5", nombre: "Pedro Rodríguez", categoria: "Asistente"}

    # Lista de docentes
    lista_docentes = [d1, d2, d3, d4, d5]

    # Escribir archivo CSV original
    Docente.escribir_csv(lista_docentes, "docentes.csv")
    IO.puts("Archivo docentes.csv creado exitosamente")

    # Leer el archivo CSV
    docentes_leidos = Docente.leer_csv("docentes.csv")
    IO.puts("Docentes leídos del archivo:")
    IO.inspect(docentes_leidos)

    # Filtrar solo los titulares
    docentes_titulares = Docente.filtrar_titulares(docentes_leidos)
    IO.puts("Docentes titulares filtrados:")
    IO.inspect(docentes_titulares)

    # Escribir archivo de docentes titulares
    Docente.escribir_csv(docentes_titulares, "docentes_titulares.csv")
    IO.puts("Archivo docentes_titulares.csv creado exitosamente")
  end
end

# Ejecutar el programa
Main.main()
