defmodule Main do
  def main do
    input = IO.read(:all) |> String.split()
    
    case input do
      [a, b | _] ->
        # Concatenamos los dos strings y convertimos a entero
        num = String.to_integer(a <> b)
        
        # Calculamos la raíz cuadrada
        raiz = :math.sqrt(num) |> trunc()
        
        # Verificamos si el cuadrado de la raíz truncada es igual al número original
        if raiz * raiz == num do
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
