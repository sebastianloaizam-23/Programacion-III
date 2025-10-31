defmodule Estudiante do
  
  defstruct id: "", nombre: "", correo: "", semestre: 1

  def main(id, nombre, correo, semestre) do
    est = %Estudiante{id: id, nombre: nombre, correo: correo, semestre: semestre}

    IO.puts("Estudiante creado:")
    IO.inspect(est)

    IO.puts("\nDespués de promover:")
    IO.inspect(promover(est))

    IO.puts("\n¿Correo institucional?")
    IO.inspect(correo_institucional?(est))
  end


  # Promueve al estudiante al siguiente semestre
  def promover(%Estudiante{} = est) do
    %Estudiante{est | semestre: est.semestre + 1}
  end

  # Valida si el correo pertenece al dominio institucional
  def correo_institucional?(%Estudiante{correo: correo}) do
    String.ends_with?(correo, "@uq.edu.co")
  end

  # Función principal para probar desde el archivo o iex
end

# 🔹 Ejemplo funcional directo:
Estudiante.main("20251014", "Jorge Ruiz", "jorge.ruiz@uq.edu.co", 3)
