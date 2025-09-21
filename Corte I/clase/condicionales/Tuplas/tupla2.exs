defmodule Tupla2 do

  def main do

    #crear ula tupla con 3 elementos
    tupla = {:ok,"Exitoso", 200}

    #Editar el tercer elemento de la tupla e imprimir la tupla actualizada
    IO.inspect(put_elem(tupla,2,404))

  end

end
Tupla2.main()
