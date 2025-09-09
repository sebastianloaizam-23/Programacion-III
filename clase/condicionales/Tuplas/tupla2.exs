defmodule Tupla2 do

  def main do

    tupla = {:ok,"Exitoso", 200}

    IO.inspect(put_elem(tupla,2,404))

  end

end
Tupla2.main()
