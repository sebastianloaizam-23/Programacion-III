defmodule Lista4 do


  def main do
    #Envia la lista que el modulo multiplicar va a usar
    lista = [1, 2, 3, 4, 5]
    IO.inspect(multiplicar(lista))
  end

  #Crea un modulo que multiplique por 3 cada elemento de la lista
  def multiplicar([]), do: []
  
  def multiplicar([head | tail]) do
    [head * 3 | multiplicar(tail)]
  end

end
Lista4.main()
