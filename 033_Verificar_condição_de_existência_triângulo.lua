--[[Problema: Ler 3 valores para os segmentos de um triângulo e retornar se é possível construir um triângulo com esses valores de segmentos
    Abstração:  1. Ler 3 valores do usuário
                2. Usar if statement para verificar condição de existência do triângulo
                    2.1. Condição: b + c > a > | b - c |
                    2.2. Se um dos lados não obedecer a regra, não temos triângulo
                3. Imprimir resultados
]]

local tabela = {}

for i = 1, 3 do
    print("Digite um numero qualquer: ")
    local numero = tonumber(io.read())
    table.insert(tabela, numero)
end

if tabela[1] + tabela[2] > tabela[3] and tabela[3] > math.abs(tabela[1] - tabela[2]) then
    print("Existe um triangulo de lados " .. table.concat(tabela, ", "))
else
    print("Nao existe triangulo com os lados " .. table.concat(tabela, ", "))
end