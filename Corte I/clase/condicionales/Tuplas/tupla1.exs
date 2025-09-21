defmodule Tupla1 do

  def main do

    #Crear una tupla con 3 elementos de diferente tipo, luego imprimir el segundo elemento y toda la tupla
    tupla = {:ok, "Hola", 24}

    IO.inspect(elem(tupla, 1))

    IO.inspect(tupla)

end

end
Tupla1.main()

