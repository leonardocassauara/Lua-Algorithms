-- Problema: Ler um valor em metros e imprimir esse mesmo valor em centimetros e milimetros
-- Abstração:   1. Ler valor em metros com io.read()
--              2. Fazer a conversão multiplicando o valor pelas potências de 10
--              3. Imprimir na tela

print("Digite um valor em metros(m): ") local metros = io.read()

local centimetros = metros * 100
local milimetros = centimetros * 10

print(metros .. " m = " .. centimetros .. " cm = " .. milimetros .. " mm")