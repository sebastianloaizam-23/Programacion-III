defmodule Lista1 do

  def main do

  list = [Armenia, Bogota, Cali, Medellin, Barranquilla]

  [head | tail] = list
  IO.inspect(head)
  IO.inspect(tail)

end

end
Lista1.main()
