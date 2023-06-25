--[[Problema: Leia 6 numeros inteiros e retorne apenas a soma dos pares
    Abstração:  1. Utilizar loop for para ler 6 inteiros
                2. No loop for, adicionar if-statement para os valores pares
                3. No if statement, somar os valores que passarem
                4. Imprimir soma
]]

local soma = 0

for i = 0, 5, 1 do
    io.write("Digite um numero inteiro: ")
    local num = tonumber(io.read())
    io.write("\n")
    if num % 2 == 0 then
        soma = soma + num
    end
end

print("A soma de todos os valores inteiros pares digitados vale: " .. soma)