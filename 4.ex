efmodule Main do
  def main do
    # Leemos la entrada de forma segura
    input = IO.read(:all) |> String.split()
    
    case input do
      [n_str | _] ->
        n = String.to_integer(n_str)
        
        #Calculamos los límites dinámicamente según N
        # i * 4 <= n  =>  i <= n/4
        # j * 7 <= n  =>  j <= n/7
        limite_i = div(n, 4)
        limite_j = div(n, 7)

        posibilidades = for i <- 0..limite_i, 
                            j <- 0..limite_j, 
                            i * 4 + j * 7 == n, 
                            do: :ok
        
        if Enum.any?(posibilidades) do
          IO.puts("Yes")
        else
          IO.puts("No")
        end
      _ ->
        :ok
    end
  end
end

Main.main()
