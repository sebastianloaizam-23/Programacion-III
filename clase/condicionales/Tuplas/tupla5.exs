defmodule Tupla5 do

  def main do

    #Convertir una tupla en una lista e imprimir la lista
  {a, b, c} = {:a, :b, :c}
  lista = [a, b, c]
  IO.inspect(lista)

  end

end
Tupla5.main()

#Otra manera directa =  lista = Tuple.to_list(tupla)
