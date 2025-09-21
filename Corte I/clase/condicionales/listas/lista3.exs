defmodule Lista3 do

  def main do

    #Crear dos listas
    lista = [10, 20, 30, 40, 50]
    lista2 = [20,50]

    # A la lista 1 quitarle la lista 2 e imprimir el resultado
    lista3 = lista -- lista2
    IO.inspect(lista3)

  end

end
Lista3.main()
