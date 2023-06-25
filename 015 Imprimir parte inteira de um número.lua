-- Problema: Pegar apenas a parte inteira de uma número float 6.12 -> 6
-- Abstração:   1. Ler a entrada do usuário
--              2. Usar string.format("%.0f", valor)
--              3. Imprimir resultado

print("Digite um numero float qualquer: ") local valor = io.read()

local valor_inteiro = string.format("%.0f", valor)

print("A parte inteira do valor " .. valor .. " vale " .. valor_inteiro)
print("Somando 2 ao valor inteiro obtemos " .. valor_inteiro + 2)