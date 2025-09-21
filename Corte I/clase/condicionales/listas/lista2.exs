defmodule Lista2 do

  def main do

    #Crear dos listas

    lista1 = [1, 2, 3]
    lista2 = [4, 5, 6]

    #Unir o concatenar las dos listas e imprimir el resultado
    lista3 = lista1 ++ lista2
    IO.inspect(lista3)

end

end
Lista2.main()
