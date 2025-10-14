defmodule Main do
  #caso base lista vacia
  def contar_multiplos([]), do: 0

  #caso recursivo
  def contar_multiplos([head | tail]) do
    if rem(head, 3) == 0 or rem(head,5) ==0 do
      contar_multiplos(tail) + 1
    else
      contar_multiplos(tail)
    end
  end
end
lista = [2, 3, 5, 7, 9, 10, 14, 15]
IO.puts Main.contar_multiplos(lista)
