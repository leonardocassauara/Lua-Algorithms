-- Problema: Ler cateto oposto e cateto adjacente para calcular e imprimir a hipotenusa do triângulo retângulo
-- Abstração:   1. Ler valor de cateto oposto
--              2. Ler valor de cateto adjacente
--              3. Calcular Hipotenusa através de Pitágora
--              4. Imprimir resultado

print("Digite o valor do cateto oposto: ") local cat_opost = io.read()
print("Digite o valor do cateto adjacente: ") local cat_adj = io.read()

local hipotenusa = ((cat_opost^2) + (cat_adj^2))^0.5

print("Para um triângulo retângulo de catetos iguais a : " .. cat_opost .. " e " .. cat_adj .. "\ntemos uma hipotenusa de valor " .. hipotenusa)