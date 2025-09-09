defmodule Tupla3 do

  def main(a,b) do
    if b !=0 do
      {:ok, a / b}
    else
      {:error, "Division por cero"}
    end
  end

end
IO.inspect(Tupla3.main(10,2))
IO.inspect(Tupla3.main(10,0))
