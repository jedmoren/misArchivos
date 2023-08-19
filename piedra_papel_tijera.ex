IO.puts("piedra papel o tijera")
possibility = ["piedra", "papel", "tijera"]
jugador = IO.gets("vamos a jugar, Piedra, Papel o Tijera....")|> String.trim
IO.inspect("el jugador ingreso: ")
IO.inspect(jugador)

if(jugador !== "piedra" and jugador !== "papel" and jugador !== "tijera") do
    IO.puts("esta no es una posibilidad dentro del juego")
else
    cpu = Enum.random(possibility)
    IO.inspect("la CPU ingreso:")
    IO.inspect(cpu)
    cond do
        jugador == "piedra" and cpu == "piedra" -> IO.puts("es un empate")
        jugador == "piedra" and cpu == "papel" -> IO.puts("Gana la CPU")
        jugador == "piedra" and cpu == "tijera" -> IO.puts("Gana el Jugador")
        jugador == "papel" and cpu == "piedra" -> IO.puts("Gana el Jugador")
        jugador == "papel" and cpu == "papel" -> IO.puts("es un empate")
        jugador == "papel" and cpu == "tijera" -> IO.puts("Gana la CPU")
        jugador == "tijera" and cpu == "piedra" -> IO.puts("Gana la CPU")
        jugador == "tijera" and cpu == "papel" -> IO.puts("Gana el Jugador")
        jugador == "tijera" and cpu == "tijera" -> IO.puts("es un empate")
    end
    end
