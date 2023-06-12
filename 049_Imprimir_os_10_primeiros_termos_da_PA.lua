--[[Problema: Leia o valor da razão e do primeiro termo de uma PA e imprima os 10 primeiros termos da seequência usando recursividade
    Abstração:  1. Ler primeiro termo
                2. Ler razão
                3. Loop for com início em 2 e término em 10
                    3.1. O loop vai calcular o próximo termo somando o valor da razão ao termo anterior (recursividade)
                    3.2. O elemento inicializador da sequência recursiva será o a1
                    3.2. for i = 2, 10, 1 do
                            termo = termo + razão
                            io.write(" " .. termo)
                4. Imprimir resultados formatados
]]

io.write("Digite o valor do primeiro termo (a1): ")
local termo = tonumber(io.read())

io.write("Digite o valor da razao(r) da PA: ")
local razao = tonumber(io.read())

io.write("Os 10 primeiros valores dessa PA serao: \n " .. termo)

for i = 2, 10, 1 do
    termo = termo + razao
    io.write(" " .. termo)
end