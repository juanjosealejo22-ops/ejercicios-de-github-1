defmodule Main do
  def main do
    # Usamos IO.read(:all) pero filtramos vacíos por si acaso hay espacios extra
    input = IO.read(:all) |> String.split()
    
    case input do
      [_n | items] ->
        items
        |> MapSet.new()
        |> MapSet.size()
        |> IO.puts()
      [] -> 
        :ok
    end
  end
end

Main.main()
