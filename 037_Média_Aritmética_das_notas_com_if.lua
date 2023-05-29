--[[Problema: Leia duas notas de um aluno e diga se ele foi aprovado, reprovado ou se está de recuperação
    Abstração:  1. Ler as duas notas
                2. Fazer a média aritmética
                3. Fazer if-statement para comparar valor da média
                4. Imprimir resultado
]]

io.write("Digite a sua nota da P1: ")
local p1 = tonumber(io.read())
io.write("Digite a sua nota da P2: ")
local p2 = tonumber(io.read())

local media = (p1 + p2) / 2

if media >= 6 then
    print("Voce foi aprovado!")
elseif media >= 4 and media < 6 then
    print("Voce esta de recuperacao!")
else
    print("Voce foi reprovado!")
end