#spawn -> Crear proceso, retorna el PID

#   spawn/1 -> spawn(fn -> ... end)
#resp= spawn(fn ->
      #IO.puts("Hola desde un spawn/1")
 #     "Hola desde un spawn/1"
#end)
#IO.puts("PID:#{inspect(resp)}")



defmodule Test do
  def saludo(msg) do
    IO.puts(msg)
  end
end

#   spawn/3 -> spawn(Módulo, :función, [arg1, arg2, ...])
#resp2=spawn(Test, :saludo, [["Hola desde un spawn/3"]])
#IO.puts("PID:#{inspect(resp2)}")


#task.async -> Crear un proceso que retoruna una struct %Task{},
#   task/1 -> Task.async(fn -> ... end)
task= Task.async(fn ->
    "Hola desde un Task.async/1"
end)
IO.puts("Task: #{inspect(task)}")


#   task/3 -> Task.async(Módulo, :función, [arg1, arg2, ...])
tarea= Task.async(Test, :saludo, ["Hola desde un Task.async/3"])


#task.await -> Espera que el proceso termine y retorna el resultado
#Task.await/2 ->Task.await(task, timeout \\ 5000)
return = Task.await(task)
IO.puts("Return: #{return}")

return2 = Task.await(tarea)
IO.puts("Return: #{return2}")
