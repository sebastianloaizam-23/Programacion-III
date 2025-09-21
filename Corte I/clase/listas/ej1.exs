defmodule Main do

  list= ["Armenia", "Pereira", "Cali", "Medellin", "Bogota"]
  #mostrar la primera cabeza y el resto cola

  [head|tail]= list
  IO.inspect( head)
  IO.inspect( tail)

end
