-- Problema: Ler quantos reais o usuário tem na carteira e imprimir quantos doláres ele pode comprar
-- Abstração:   1. Ler quantos reais o usuário tem
--              2. Converter valor para dólar 15/05/2023 - 1 USD = 4,89 BRL
--              3. Imprimir na tela o valor obtido

print("Quanto voce tem na carteira? R$") local reais = io.read()

local dolares = reais / 4.89

print("R$" .. reais .. ",00 = " .. "$" .. string.format("%.2f", dolares))