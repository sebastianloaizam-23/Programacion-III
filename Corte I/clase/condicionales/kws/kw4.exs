defmodule Kw4 do

  def main do
    lista = [modo: :rapido, modo: :seguro, tiempo: 15]
    modos= Keyword.get_values(lista, :modo)
    IO.inspect(modos)
  end

end
Kw4.main()
