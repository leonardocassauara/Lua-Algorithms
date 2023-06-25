--[[Problema: Imprima na tela a soma de todos os valores inteiros ímpares e múltiplos de 3 no intervalo [0, 500]
    Abstração:  1. soma = nil
                2. for i = 0, 500, 1
                3. if i % 3 == 0 and i % 2 ~= 0
                4. soma = soma + i
                5. imprimir os resultados
]]

local soma = 0

for i = 0, 500, 1 do
    if i % 3 == 0 and i % 2 ~= 0 then
        soma = soma + i
    end
end

print("A soma dos impares multiplos de 3 entre 0 e 500 e: " .. soma)