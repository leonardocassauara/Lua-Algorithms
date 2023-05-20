-- Problema: Imprimir na tela a ordem trocada ao acaso da ordem dos elementos de uma tabela
-- Abstração:   1. Criar tabela
--              2. Imprimir tabela
--              3. Randomizar a ordem dos elementos da tabela
--              4. Imprimir nova tabela

local tabela = {"a", "b", "c", "d"}
local nova_tabela = {}
local tabela_copia = {}

math.randomseed(os.time())

for i = 1, #tabela do
    table.insert(tabela_copia, tabela[i])
end

while (#tabela > 0) do
    local random_index = math.random(#tabela)
    local elemento = table.remove(tabela, random_index)
    table.insert(nova_tabela, elemento)
end

print("A tabela original era : " .. table.concat(tabela_copia, ", "))
print("Agora a nova tabela e : " .. table.concat(nova_tabela, ", "))
