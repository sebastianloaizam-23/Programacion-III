defmodule Lista5 do

  def main do
    lista = [100, 200, 300]
    destructurar(lista)
  end

  def destructurar([a,b,c]) do
    IO.inspect("a = #{a}, b = #{b}, c = #{c}")
  end

end

Lista5.main()
