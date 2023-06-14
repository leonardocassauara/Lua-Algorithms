--[[Problema: Verifique se uma string digitada pelo usuário é um palíndromo ou não
    Abstração:  1. Ler string
                2. O que é um palíndromo?
                    2.1. Uma frase que é igual a ela mesma de trás pra frente
                    2.2. Ou seja, se string == string.reverse(string) then
                            print(palindroma)
                3. Imprimir resultados
]]

io.write("Digite uma frase qualquer: ")
local str = tostring(io.read())

--[[Forma 1: Usando método da biblioteca string
if string.upper(str) == string.upper(string.reverse(str)) then
    print("A frase digitada eh um palindromo")
else
    print("A frase digitada nao eh um palindromo")
end
]]

-- Forma 2: Lógica
local string_revertida = ""

for i = #str, 1, -1 do
    string_revertida = string_revertida .. string.sub(str, i, i)
end

if string.upper(str) == string.upper(string_revertida) then
    print("A frase digitada eh um palindromo")
else
    print("A frase digitada nao eh um palindromo")
end
