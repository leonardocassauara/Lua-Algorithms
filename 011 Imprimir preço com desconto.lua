-- Problema: Ler valor original pelo usuário, calcular novo preço com desconto e imprimi-lo
-- Abstração:   1. Ler valor pelo usuário
--              2. Aplicar desconto de 5%
--              3. Imprimir resultado

print("Digite o valor do produto: R$") local preco = io.read()

local novo_preco = preco * 0.95

print("O valor original era R$" .. string.format("%.2f", preco) .. "\nO novo valor com 5% de desconto e R$" .. string.format("%.2f", novo_preco))