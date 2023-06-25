--[[Problema: Compare dois números e imprima dizendo qual é maior e se são iguais
    Abstração:  1. Ler valores
                1.1. Armazená-los numa table ou atribuir a duas variáveis locais
                2. Criar if-statement para comparar os dois valores
                3. Imprimir resultados
]]

io.write("Digite um numero: ")
local valor_1 = tonumber(io.read())

io.write("Digite mais um valor: ")
local valor_2 = tonumber(io.read())

if valor_1 == valor_2 then
    print("Ambos os valores sao iguais")
else
    if valor_1 > valor_2 then
        print("O valor " .. valor_1 .. " e maior")
    else
        print("O valor " .. valor_2 .. " e maior")
    end
end