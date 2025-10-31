defmodule Main do
  def main do
    #Creacion de un struct
    u2 = User.crear("Ana.gmail.com", "54321")
    u3 = User.crear("Luis.gmail.com", "67890")
    u1 = User.crear("Juan.gmail.com", "12345")


    list_users = [u1, u2, u3]

    User.escribir_csv(list_users, "users.csv")
  end
end

Main.main()
