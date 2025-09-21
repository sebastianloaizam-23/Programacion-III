defmodule Main do

  list=[10,20,30,40,50]
  listResta=[20,50]

  listaFinal= list -- listResta

  IO.inspect(listaFinal)
end
