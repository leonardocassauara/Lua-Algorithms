--[[Problema: Será lido o nome completo do usuário em um único input, depois imprima o primeiro nome e o sobrenome separadamente
    Abstração:  1. Ler nome do usuário com io.read()
                2. Separar nome e sobrenomo do nome completo
                    2.1. Criar uma tabela vazia
                    2.2. Utilizar o comando string.gmatch(nomecompleto, "%S+") para separar as palavras
                    2.3. Colocar esse comando num loop for
                    2.4. A cada ciclo adicionar cada palavra na tabela
]]

print("Digite o seu nome completo: ")
local nome = io.read()
local tabela = {}

for substantivo in nome:gmatch("%S+") do
    table.insert(tabela, substantivo)
end

print("O seu primeiro nome e\t: " .. tabela[1])
io.write("O seu sobrenome e\t: ")
for i = 2, #tabela do
    io.write(tabela[i] .. " ")
end