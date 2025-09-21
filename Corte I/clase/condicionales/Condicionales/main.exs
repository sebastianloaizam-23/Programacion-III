defmodule Main do

  def main do

    #Util.input(" Ingrese su numero", :string)
    #|> positivo()

  Util.input(" Ingrese su saldo", :integer)
  |> salario()

  Util.input(" Ingrese su monto a retirar", :integer)
  |> salario()
end

  def positivo (numero) do
    if numero>0 do
      Util.show_message("El numero es positivo")
    else
      Util.show_message("El numero es negativo")
    end
  end

  def salario(saldo, monto)do
    if saldo >= monto do
      saldo= saldo-monto
      Util.show_message("el nuevo saldo es #{saldo}")
    else
      Util.show_message("Fondos insuficientes")

    end

  end


end

Main.main()
