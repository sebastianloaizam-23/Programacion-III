defmodule Main do

  def main do
    matryoshka_recursiva(5)
    matryoshka_recursiva_clausula(5)
  end

    #CON CONDICIONAL -------------------------------------------------
  def matryoshka_recursiva(cant) do
    if cant === 0 do # ---------------- Caso Base es el caso mas simple
      IO.puts("ya no se pueden abrir más muñecas")
    else # --------------------------------------------- Caso Recursivo
      IO.puts("abriendo muñeca #{cant}")
      matryoshka_recursiva(cant - 1)
      IO.puts("cerrando muñeca #{cant}")
    end
  end




  
  #CON CLAUSULAS -------------------------------------------------
  def matryoshka_recursiva_clausula(0) do # --------------------- CASO BASE
    IO.puts("ya no se pueden abrir más muñecas")
  end

  def matryoshka_recursiva_clausula(cant) do # -------------- CASO RECURSIVO
    IO.puts("abriendo muñeca #{cant}")
    matryoshka_recursiva_clausula(cant - 1)
    IO.puts("cerrando muñeca #{cant}")
  end

end

Main.main()
