--[[Problema: Leia o peso de cinco pessoas e retorne qual é o maior e o menor peso lido
    Abstração:  1. Quantas vezes o programa vai rodar?
                    1.1. 5 (loop for ou while)
                2. Quais informações são necessárias?
                    2.1. Peso ordenado
                3. Como obter essas informações
                    3.1. Peso ordenado
                        3.1.1. Ler peso, se i = 0, então peso igual a maior e menor
                        3.1.2. Se i ~= 1 e peso > maior ou peso < menor, as variáveis maior ou menor serão atualizadas
                4. Imprimir resultados
]]

local maior, menor = 0, 0

for i = 1, 5, 1 do
    io.write("Quanto voce pesa? (Kg) > ")
    local peso = tonumber(io.read())
    if i == 1 then
        maior = peso
        menor = peso
    else
        if peso > maior then
            maior = peso
        elseif peso < menor then
            menor = peso
        end
    end
end

print("O maior peso lido foi " .. maior .. " Kg\nO menor peso lido foi " .. menor .. " Kg")