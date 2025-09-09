defmodule Tupla3 do

  def main(a,b) do
    #si el segundo numero (b) es diferente de 0, entonces devuelve una tupla con el :ok y el resultado de la división
    if b !=0 do
      {:ok, a / b}

    #si el segundo numero (b) es igual a 0, entonces devuelve una tupla con :error y un mensaje de error
    else
      {:error, "Division por cero"}
    end
  end

end
IO.inspect(Tupla3.main(10,2))
IO.inspect(Tupla3.main(10,0))
