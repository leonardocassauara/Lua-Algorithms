-- Problema: Reajustar salário de um funcionário e então imprimí-lo
-- Abstração:   1. Ler entrada do usuário
--              2. Reajustar salário em +15%
--              3. Imprimir resultados

print("Digite o valor do salario para ser reajustado: ") local salario = io.read()

local salario_reajuste = salario * 1.15

print("O salario original era R$" .. string.format("%.2f", salario) .. "\nO novo salario vale R$" .. string.format("%.2f", salario_reajuste))