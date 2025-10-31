defmodule User do
  defstruct email: "none", pass: nil

  def crear(email,pass) do
    %User{email: email, pass: pass}
  end

  def escribir_csv(list_users, filename) do
    header = "email,pass\n"

    contenido =
      list_users
      |> Enum.map(fn %User{email: email, pass: pass} -> "#{email},#{pass}" end)
      |> Enum.join("\n")

    File.write!(filename, header <> contenido)
  end

  
end
