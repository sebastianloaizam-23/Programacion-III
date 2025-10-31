defmodule Main do

	def suma_pares([], resultado) do
		IO.puts("La suma de los numero pares da #{resultado}")
    resultado
	end

	def suma_pares([head | tail], resultado) when rem(head, 2)==0 do
		suma_pares(tail, head+resultado)
	end

def suma_pares([head | tail], resultado) when rem(head,2)!=0 do
		suma_pares(tail, resultado)
	end

end

Main.suma_pares([1,2,3,4,5,6], 0)
