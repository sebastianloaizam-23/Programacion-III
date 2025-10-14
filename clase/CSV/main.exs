defmodule Main do
  def main do
    #Creacion de un struct
    u1 = %User{email: "Jc.gmail.com", pass: "12345"}
    u2 = %User{email: "hgf.gmail.com", pass: "12ffgh"}
    u3 = %User{email: "fg.gmail.com", pass: "11235"}
    u4 = %User{email: "gf.gmail.com", pass: "14555"}

    #Impresion de los struct
    list_users = [u1, u2, u3, u4]
    User.escribir_csv(list_users, "users.csv")

    list_users_leidos = User.leer_csv("users.csv")
    IO.inspect(list_users_leidos)

  end
end

Main.main()
