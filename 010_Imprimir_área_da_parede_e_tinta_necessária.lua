-- Problema: Ler valores de largura e altura do usuário, calcular área e tinta necessária
-- Abstração:   1. Ler valores de largura e altura m x m
--              2. Calcular área: largura x altura
--              3. Calcular gasto de tinta: 1 litro para 2 m²
--              4. Imprimir resultados

print("Digite um valor de altura: ") local altura = io.read()
print("Digite um valor de largura: ") local largura = io.read()

local area = largura * altura
local tinta = area / 2

print("Uma parede de dimensoes " .. largura .. "x" .. altura .. "\nTem area = " .. area .. " m x m" .. "\nTem gasto de tinta = " .. tinta .. " litros")