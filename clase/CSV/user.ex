defmodule User do

  defstruct email: "none", pass: nil

  def crear(email, pass) do
    %User{email: email, pass: pass}
  end

  def escribir_csv(list_users, file_name) do
    header= "email,pass\n"

    contenido=
      list_users
      |>Enum.map(fn %User{email: email,pass: pass}->
        "#{email},#{pass}\n"
      end)
      |> Enum.join("")
    File.write(file_name, header <> contenido, [:append])
  end

  def leer_csv(file_name) do
    case File.read (file_name) do
      {:ok, contenido} ->
        String.split(contenido, "\n", trim: true )
        |> Enum.map(fn row ->
          [email, pass] = String.split(row, ",")
          crear(email, pass)
        end)
        |> Enum.drop(1)
      {:error, reason} ->
        IO.puts("Error al leer el archivo: #{reason}")
        []
    end
  end

end
