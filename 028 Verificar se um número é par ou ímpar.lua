--[[Problema: Distinguir se um número é par ou ímpar
    Abstração:  1. Ler número do usuário
                2. Utilizar If statement para verificar se o número dividido por 2 resulta em resto 0
                3. Imprimir resultados
]]

print("Digite um numero qualquer: ")
local numero = math.floor(tonumber(io.read()))

if (numero % 2 == 0) then
    print("O numero " .. numero .. " e par")
else
    print("O numero " .. numero .. ' e impar')
end