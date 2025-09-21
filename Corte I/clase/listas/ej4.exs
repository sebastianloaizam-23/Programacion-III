defmodule Main do

  list=[1,2,3,4,5]
  listaFinal= Enum.map(list, fn x -> x*3 end)
  IO.inspect(listaFinal)

end
