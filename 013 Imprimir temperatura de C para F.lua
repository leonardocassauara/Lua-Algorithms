-- Problema: Ler um valor em Celsius e converter para Fahrenheit
-- Abstração:   1. Ler valor em Celsius
--              2. Converter em Fahrenheit
--              3. Imprimir resultado

print("Digite uma temperature em Celsius: ") local celsius = io.read()

local fahrenheit = (celsius * 9 / 5) + 32

print(celsius .. " Celsius = " .. fahrenheit .. " Fahrenheit")