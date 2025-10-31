defmodule Main do
  def conteo([]), do: 0

  def conteo([head | tail]) do
    if rem(head, 3)==0 or rem(head,5)==0 do
      1+conteo(tail)
    else
      conteo(tail)
    end
  end
end
lista=[1,2,3,4,5]
IO.puts Main.conteo(lista)
