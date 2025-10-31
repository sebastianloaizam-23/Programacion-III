defmodule Dispositivo do
  defstruct id: "", tipo: "", marca: "", estado: ""

  def apto_prestamo?(%Dispositivo{estado: estado}) do
    estado in ["nuevo", "usado"]
  end

  def actualizar_estado(%Dispositivo{} = disp, nuevo_estado) do
    %Dispositivo{disp | estado: nuevo_estado}
  end

  def main do
    disp1 = %Dispositivo{
      id: "D001",
      tipo: "Laptop",
      marca: "Lenovo",
      estado: "usado"
    }

    IO.puts("Dispositivo inicial:")
    IO.inspect(disp1)

    IO.puts("\n¿Es apto para préstamo?")
    IO.inspect(Dispositivo.apto_prestamo?(disp1))

    disp_actualizado = Dispositivo.actualizar_estado(disp1, "dañado")
    IO.puts("\n Dispositivo con estado actualizado:")
    IO.inspect(disp_actualizado)

    IO.puts("\n¿Sigue siendo apto para préstamo?")
    IO.inspect(Dispositivo.apto_prestamo?(disp_actualizado))
  end
end

Dispositivo.main()
