--[[Problema: Leia um número e calcule seu fatorial
    Abstração:  1. O programa vai rodar mais de uma vez?
                    1.1. Não
                2. Quais informações são necessárias?
                    2.1. Número inteiro qualquer
                3. O que fazer com essa informação?
                    3.1. Usar loop for para calcular fatorial apartir do inicializador !1
                4. Imprimir resultados
]]

io.write("Digite um numero para consultar o seu fatorial: ")
local num = tonumber(io.read())
local fat = 1

for i = 1, num, 1 do
    fat = fat * i
end

print("O fatorial de " .. num .. " eh " ..fat)