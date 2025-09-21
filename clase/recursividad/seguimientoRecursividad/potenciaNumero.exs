defmodule PotenciaNumero do

  def potencia(_,0,resultado) do #Caso base, se cumple cuando el exponente es 0, en este caso no nos interesa la base, por eso el _
    IO.puts("El resultado de la potencia es #{resultado}")
  end

  def potencia(base, exponenente, resultado) when exponenente >0 do #Caso recursivo, se cumple cuando el exponente es mayor a 0, multiplicamos la base por el resultado y restamos 1 al exponente
    potencia(base, exponenente-1, resultado*base)
  end

end

PotenciaNumero.potencia(2,3,1) #Se llama el metodo dandole como base 2, exponenete 3 y resultado inicial 1 (porque en caso de que el exponente sea 0, el resultado debe ser 1)
