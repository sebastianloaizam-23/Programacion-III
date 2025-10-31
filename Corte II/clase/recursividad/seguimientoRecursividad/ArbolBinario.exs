defmodule ArbolBinario do
  def sumarArbolBinario(nil, _suma) do
    :ok
  end

  def sumarArbolBinario([head, nil, nil], suma) do
    IO.puts("La suma final de la rama es: #{suma + head}")
  end

  def sumarArbolBinario([head, izquierda, derecha], suma) do
    # IO.puts("esta es la head  #{inspect(head)}")
    # IO.puts("esta es la izquierda  #{inspect(izquierda)}")
    # IO.puts("esta es la derecha  #{inspect(derecha)}")

    sumarArbolBinario(izquierda, suma + head)
    sumarArbolBinario(derecha, suma + head)
  end
end


ArbolBinario.sumarArbolBinario([1,
                                [2,
                                  [4, nil, nil],
                                  [5, nil, nil]],
                                [3,
                                  [6, nil, nil],
                                  [7, nil, nil]]
                                ],0)
