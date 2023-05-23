--[[Problema: Ler salário do usuário, se maior que 1250, faça um reajuste de 10%, se menor ou igual, faça um reajuste de 15%
    Abstração:  1. Ler salário
                2. Adicionar if statemente para ler valor obtido
                3. Imprimir resultados
]]
print("Digite o valor do seu salario: ")
local salario = tonumber(io.read())

if salario > 1250 then
    print("Para um salario de R$" .. string.format("%.2f", salario) .. " reajuste de 10%: R$" .. string.format("%.2f", salario * 1.10))
else
    print("Para um salario de R$" .. string.format("%.2f", salario) .. " reajuste de 15%: R$" .. string.format("%.2f", salario * 1.15))
end