--[[Problema: Verificar quantas vezes o char "A" aparece numa string, além de imprimir sua primeira e última ocorrência
    Abstração:  1. Ler string do usuário
                2. Usar os comandos:
                    2.1. Primeira forma: string.find(string, 'A') e string.reverse(string)
                    2.2. Segunda  forma: string.find(string, 'A')
                3. Contar quantas vezes o 'A' aparece na string
                    3.1. Verificar cada caracterer da frase
                    3.2. Se o caracter for 'A', somar 1 ao contador
]]
print("Digite uma frase: ")
local frase = string.upper(io.read())
local contador = 0

for i = 1, #frase do
    if (string.sub(frase, i, i) == 'A') then
        contador = contador + 1
    end
end

print("A frase digitada tem " .. #frase .. " caracteres")
print("Na frase digitada, a letra 'A' aparece: " .. contador .. " vezes")
print("A primeira aparicao da letra 'A' acontece no indice: " .. string.find(frase, 'A'))
print("A ultima   aparicao da letra 'A' acontece no indice: " .. #frase + 1 - string.find(string.reverse(frase), 'A'))