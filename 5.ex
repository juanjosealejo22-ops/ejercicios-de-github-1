defmodule Main do
  def main do
    # Leemos la entrada completa y tomamos el primer elemento (el número)
    input_list = IO.read(:all) |> String.split()
    
    case input_list do
      [numero_str | _] ->
        # Convertimos el string a entero para la división
        n = String.to_integer(numero_str)
        
        # Calculamos la suma de sus dígitos
        suma_digitos = numero_str
        |> String.graphemes()
        |> Enum.map(&String.to_integer/1)
        |> Enum.sum()
        
        # Verificamos si es divisible (Número de Harshad)
        if rem(n, suma_digitos) == 0 do
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
