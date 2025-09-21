defmodule Recursion do

  def sum(0,res) do
    IO.puts("El resultado es #{res}")
  end

  def sum(cant,res) do
    sum(cant-1 , res+cant)
  end

end
Recursion.sum(3,0)

