defmodule Main do

	def cantidad_productos([], cantidad) do
		  IO.puts("La cantidad de productos es #{cantidad}")
		  cantidad
	end

	def cantidad_productos([head|tail], cantidad) do
		  cantidad_productos(tail, cantidad+head.cantidad)
	end

end

productos=[
	%{producto: "Camisa", cantidad: 10},
	%{producto: "pantalon", cantidad: 15},
	%{producto: "zapatos", cantidad: 5},
	%{producto: "gorra", cantidad: 10}
]

Main.cantidad_productos(productos, 0)
