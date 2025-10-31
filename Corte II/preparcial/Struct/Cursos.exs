defmodule Curso do
  defstruct codigo: "", nombre: "", creditos: 0, docente: ""

  # Retorna true si el curso es de alta carga (≥ 4 créditos)
  def alta_carga?(%Curso{creditos: creditos}) do
    creditos >= 4
  end

  # Retorna un nuevo curso con un docente diferente
  def cambiar_docente(%Curso{} = curso, nuevo_docente) do
    %Curso{curso | docente: nuevo_docente}
  end

  # --- MAIN PARA EJECUCIÓN DIRECTA ---
  def main do
    curso1 = %Curso{
      codigo: "INF-101",
      nombre: "Programación Funcional",
      creditos: 4,
      docente: "Dra. María Pérez"
    }

    IO.puts("📘 Curso inicial:")
    IO.inspect(curso1)

    IO.puts("\n¿Es de alta carga?")
    IO.inspect(Curso.alta_carga?(curso1))

    curso_actualizado = Curso.cambiar_docente(curso1, "Ing. Jorge Ruiz")
    IO.puts("\nCurso con nuevo docente:")
    IO.inspect(curso_actualizado)
  end
end

# Llamada automática al main al ejecutar el archivo
Curso.main()
