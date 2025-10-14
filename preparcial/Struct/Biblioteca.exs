defmodule Libro do
  defstruct isbn: "", titulo: "", autor: "", anio: 0, prestado: false

  def prestar(%Libro{} = libro) do
    %Libro{libro | prestado: true}
  end

  def devolver(%Libro{} = libro) do
    %Libro{libro | prestado: false}
  end

  def main do
    libro1 = %Libro{
      isbn: "978-84-376-0494-7",
      titulo: "Cien años de soledad",
      autor: "Gabriel García Márquez",
      anio: 1967,
      prestado: false
    }

    IO.puts(" Libro inicial:")
    IO.inspect(libro1)

    libro_prestado = Libro.prestar(libro1)
    IO.puts("\n Libro después de ser prestado:")
    IO.inspect(libro_prestado)

    libro_devuelto = Libro.devolver(libro_prestado)
    IO.puts("\nLibro después de ser devuelto:")
    IO.inspect(libro_devuelto)
  end
end

Libro.main()
