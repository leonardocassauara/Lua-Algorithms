--[[Problema: Gerar um número aleatório entre 1 e 10, inclusive. O jogador irá tentar advinhar o número até que acerte. No final mostre quantas tentativas foram necessárias
    Abstração:  1. O programa vai rodar mais de uma vez?
                    1.1. Sim, se o jogador errar o palpite (while)
                2. Quais informações são necessárias?
                    2.1. Número aleatório gerado pelo PC
                    2.2. Palpite do jogador
                3. O que fazer com essas informações?
                    3.1. Compara-las
                4. Imprimir resultado
]]

local pc = math.random(1, 10)

io.write("Tente advinhar o numero entre 1 e 10!\nQual o seu palpite? ")
local guess = tonumber(io.read())
local contador = 0

while guess ~= pc do
    io.write("Errou. Tente novamente > ")
    guess = tonumber(io.read())
    contador = contador + 1
end

if contador == 0 then
    print("De primeira! Parabens!")
else
    print("Parabens! Voce acertou o numero " .. pc .. " na sua " .. contador .. " tentativa")
end