--[[Problema: Procurar pela string "Silva" numa outra string
    Abstração:  1. Ler o nome completo do usuário
                2. Formatar valor obtido para lower ou upper
                3. Usar o comando string.find(nome, "silva") para retornar um valor booleano
                4. Imprimir resultado
]]

print("Digite o seu nome completo: ")
local nome = string.lower(io.read())

print(string.find(nome, "silva") ~= nil)