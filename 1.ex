defmodule Main do
  def main do
    # Leemos toda la entrada y la convertimos en una lista de enteros
    input = IO.read(:all) |> String.split() |> Enum.map(&String.to_integer/1)
    
    case input do
      [n, k | lista] ->
        resultado = lista
        |> Enum.sort(:desc)
        |> Enum.take(k)
        |> Enum.sum()
        
        IO.puts(resultado)
      _ ->
        :ok
    end
  end
end

# Ejecución de la función
Main.main()
