--[[Problema: Leia 3 números e imprima qual deles é o maior e qual deles é o menor valor
    Abstração:  1. Ler 3 números
                2. Armazená-los numa tabela
                3. Ordenar tabela
                4. Adicionar if statement para diferenciar elementos diferentes e iguais
                5. Imprimir resultados
]]
local tabela = {}

for i=1, 3 do
    print("Digite um numero qualquer: ")
    local numero = tonumber(io.read())
    table.insert(tabela, numero)
end

table.sort(tabela)

if tabela[1] ~= tabela[2] or tabela[2] ~= tabela[3] then
    print("O maior valor digitado foi " .. tabela[3] .. '\nO menor valor digitado foi ' .. tabela[1])
else
    print("Os elementos digitados sao iguais")
end
