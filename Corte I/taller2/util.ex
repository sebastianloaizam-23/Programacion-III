defmodule Util do

  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  def input(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", message])
    |> elem(0)
    |> String.trim()
  end
  def input(message, :string) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", message])
    |> elem(0)
    |> String.trim()
  end

  def input(message, :integer) do
    try do
      message
      |> input(:string)
      |> String.to_integer()
    rescue
      ArgumentError ->
        IO.puts("No se ha introducido un valor entero valido")
        input(message, :integer)
    end
  end

  def input(message, :float) do
    try do
      message
      |> input(:string)
      |> String.to_float()
    rescue
      ArgumentError ->
        IO.puts("No se ha introducido un valor decimal valido")
        input(message, :float)
    end
  end

  def miles(num) when is_integer(num) do
    num
    |> Integer.to_string()
    |> String.reverse()
    |> String.replace(~r/.{3}(?=.)/, "\\0.")
    |> String.reverse()
  end
  def miles(num) when is_float(num) do
    num
    |> Float.round(0)
    |> trunc()
    |> miles()
  end

end
