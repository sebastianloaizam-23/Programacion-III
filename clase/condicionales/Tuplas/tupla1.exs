defmodule Tupla1 do

  def main do

    tupla = {:ok, "Hola", 24}

    IO.inspect(elem(tupla, 1))

    IO.inspect(tupla)

end

end
Tupla1.main()
