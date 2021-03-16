def da_boas_vindas
    puts
    puts "        P  /_\\  P                              "
    puts "       /_\\_|_|_/_\\                             "
    puts "   n_n | ||. .|| | n_n         Bem vindo ao    "
    puts "   |_|_|nnnn nnnn|_|_|     Jogo de Adivinhação!"
    puts "  |' '  |  |_|  |'  ' |                        "
    puts "  |_____| ' _ ' |_____|                        " 
    puts "        \\__|_|__/                              "
    puts
    puts "Bem vindo ao jogo da advinhação!"
    puts "Qual é o seu nome?"
    nome  = gets.strip
    puts "Começaremos o jogo para você, #{nome}"
    puts "\n\n"
    nome
end

def niveis_de_dificuldade
    puts "Qual o nível de dificuldade?"
    puts "(1) Muito fácil (2) Fácil (3) Normal (4) Difícil (5) Impossível"
    puts "Escolha: "
    dificuldade = gets.to_i
end

def sorteia_numero_secreto(dificuldade)
    case dificuldade 
    when 1
        maximo = 30
    when 2
        maximo == 50
    when 3
        maximo = 100
    when 4
        maximo = 150
    else 
        maximo = 200
    end
    puts "Escolhendo um número secreto entre 1 e #{maximo}..."
    numero_sorteado = rand(maximo) + 1
    puts "Escolhido! Que tal advinhar nosso número secreto? "
    puts "\n\n"
    numero_sorteado
end

def pede_um_numero(chutes, tentativas, limite_de_tentativas)
    puts "Tentativa #{tentativas} de #{limite_de_tentativas}, digite um número: "
    puts "\n"
    puts "Chutes até agora: #{chutes}"
    chute = gets.strip
    puts "Será que você acertou? Você chutou #{chute}"
    chute
end

def verifica_se_acertou(numero_secreto, chute)
    acertou = chute.to_i == numero_secreto
    if acertou
        ganhou
        return true
    end

    errou = numero_secreto > chute.to_i
    if errou
        puts "Que pena, você errou. O número secreto é maior!"
        puts "\n"
    else 
        puts "Que pena, você errou. O número secreto é menor!"
        puts "\n"
    end
    false
end

def ganhou
    puts
    puts "             OOOOOOOOOOO               "
    puts "         OOOOOOOOOOOOOOOOOOO           "
    puts "      OOOOOO  OOOOOOOOO  OOOOOO        "
    puts "    OOOOOO      OOOOO      OOOOOO      "
    puts "  OOOOOOOO  #   OOOOO  #   OOOOOOOO    "
    puts " OOOOOOOOOO    OOOOOOO    OOOOOOOOOO   "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOO  OOOOOOOOOOOOOOOOOOOOOOOOO  OOOO  "
    puts " OOOO  OOOOOOOOOOOOOOOOOOOOOOO  OOOO   "
    puts "  OOOO   OOOOOOOOOOOOOOOOOOOO  OOOO    "
    puts "    OOOOO   OOOOOOOOOOOOOOO   OOOO     "
    puts "      OOOOOO   OOOOOOOOO   OOOOOO      "
    puts "         OOOOOO         OOOOOO         "
    puts "             OOOOOOOOOOOO              "
    puts
    puts "               Acertou!                "
    puts
end

def joga(nome, dificuldade)
        numero_secreto = sorteia_numero_secreto dificuldade
        pontuacao_atual = 1000
        limite_de_tentativas = 5
        chutes = []

    for tentativas in 1..limite_de_tentativas
        chute = pede_um_numero(chutes, tentativas, limite_de_tentativas)
        chutes << chute

        if nome == "Barbara"
            ganhou
            break
        end

        pontos_perdidos = (chute.to_i - numero_secreto).abs / 2.0
        pontuacao_atual -= pontos_perdidos

        if verifica_se_acertou(numero_secreto, chute)
            break
        end
    end

    puts "Você ganhou até agora #{pontuacao_atual} pontos."
end

def deseja_continuar_a_jogar?
    puts "Deseja jogar novamente? (S/N)"
    continuar_a_jogar = gets.strip
    continuar_a_jogar.upcase == "N"
end

nome = da_boas_vindas
dificuldade = niveis_de_dificuldade

loop do 
    joga nome, dificuldade
    if deseja_continuar_a_jogar?
        break
    end
end