defmodule Lista3 do

  def main do

    lista = [10, 20, 30, 40, 50]
    lista2 = [20,50]

    lista3 = lista -- lista2
    IO.inspect(lista3)

  end

end
Lista3.main()
