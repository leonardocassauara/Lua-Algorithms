--[[Problema: Imprima na tela a tabuada de um número qualquer usando laços
    Abstração:  1. Ler valor
                2. for i = 1, 10, 1
                3. Multiplicar i por valor
                4. Imprimir resultado
]]

io.write("Digite um numero para consultar sua tabuada: ")
local num = tonumber(io.read())

for i = 1, 10, 1 do
    print(num .. ' x ' .. i .. ' = ' .. num * i)
end