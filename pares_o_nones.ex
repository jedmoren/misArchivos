IO.puts("Vamos a Jugar pares o nones")

require Integer

possibility = [0, 1, 2]
selection = ["pares", "nones"]

juega = IO.gets("quien juega, jugador o cpu: ") |> String.trim
jugador = IO.gets("0, 1 o 2 dedos, ingresa el valor numerico: ") |> String.trim |> String.to_integer
contrincante_random = Enum.random(possibility)
IO.inspect("cpu selecciono estos dedos")
IO.inspect(contrincante_random)
contrincante_selection = Enum.random(selection)
IO.inspect("cpu selecciono pares o nones ?")
IO.inspect(contrincante_selection)
resultado = contrincante_random + jugador


if(juega == "cpu") do

    if(contrincante_selection == "pares") do
        if(Integer.is_even(resultado) == true) do
            IO.puts("CPU Gana")
        else
            IO.puts("CPU pierde")
        end
    else
        if(Integer.is_even(resultado) == false) do
            IO.puts("CPU Gana")
        else
            IO.puts("CPU pierde")
        end
    end
else
    jugador_select = IO.gets("pares o nones") |> String.trim
    if(jugador_select == "pares") do
        if(Integer.is_even(resultado) == true) do
            IO.puts("Jugador Gana")
        else
            IO.puts("Jugador pierde")
        end
    else
        if(Integer.is_odd(resultado) == true) do
            IO.puts("Jugador Gana")
        else
            IO.puts("Jugador pierde")
        end
    end
end

