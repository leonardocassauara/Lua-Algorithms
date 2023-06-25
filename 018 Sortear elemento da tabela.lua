-- Problema: selecionar uma elemento aleatório dos 4 elementos de uma tabela
-- Abstração:   1. Criar tabela
--              2. Definir os 4 elementos da tabela
--              3. Selecionar um elemento ao acaso
--              4. Imprimir o elemento selecionado

local tabela = {"a", "b", "c", "d"}

print("Elemento da tabela sorteado: " .. tabela[math.random(1,4)])