defmodule Lista5 do

  def main do
    #Crea y envia una lista que el modulo destructurar va a usar
    lista = [100, 200, 300]
    destructurar(lista)
  end

  #Este modulo lo que hace es separar cada elemento de la lista en una variable diferente y luego imprimirlas
  def destructurar([a,b,c]) do
    IO.inspect("a = #{a}, b = #{b}, c = #{c}")
  end

end

Lista5.main()
