--[[Problema: Faça um jogo de adivinhação simples utilizando random e if statement, o computador deve escolher um número entre 1 e 5, inclusive, e o jogador deve tentar advinhar
    Abstração:  1. Fazer o computador "pensar" num número entre 1 e 5
                    1.1. Como o programa vai rodar apenas uma vez, sem loop, a função math.randomseed é desnecessária
                    1.2. Usar a função math.random(1, 5) para pegar o número aleatório
                2. Ler tentativa do usuário
                3. Usar If statement para comparar tentativa com o número decidido pelo PC
]]

print("O computador selecionou um numero entre 1 e 5, inclusive. Tente adivinha-los.")
local numero_pc = math.random(1, 5)

print("Qual o seu palpite? ")
local numero_jogador = math.floor(tonumber(io.read()))

if (numero_jogador == numero_pc) then
    print("Parabens! Voce acertou o numero.\nO numero era " .. numero_pc)
else
    print("Que pena. Voce errou o numero.\nO numero era " .. numero_pc)
end