print("Digite uma nota: ")
local nota_1 = io.read()

print("Digite outra nota: ")
local nota_2 = io.read()

local media = (nota_1 + nota_2) / 2

print("A media aritmetica das notas vale: " .. string.format("%.2f", media))