--[[Problema: Leia nome, idade e sexo de 4 pessoas e retorne a média de idade do grupo, o nome do homem mais velho, número de mulheres com menos de 20 anos
    Abstração:  1. Quantas vezes o programa vai rodar?
                    1.1. 4 (for ou while)
                2. Quais informações são necessárias?
                    2.1. Nome
                    2.2. Idade
                    2.3. Sexo
                3. Como obter as informações desejadas com aquelas informações em mãos?
                    3.1. Média de idade do grupo
                        3.1.1. Soma das idades dividido pelo número de idades (acumulador / contador)
                    3.2. O nome do homem mais velho
                        3.2.1. Comparar idade de todos os homens cadastrados
                        3.2.2. Atualizar maior idade e nome atribuído a ela
                    3.3. Número de mulheres com menos de 20 anos
                        3.3.1. Comparar idade da mulher com 20
                        3.3.2. Atualizar contador
                4. Imprimir resultados
Utilizar tabela eliminaria o uso de algumas variáveis
]]
local soma_idade, maior_idade_homem, num_mulheres_menor20, num_homem, nome_homem_velho = 0, 0, 0, 0,  ""


for i = 1, 4, 1 do
    local sexo = nil
    io.write("Digite o seu nome: ")
    local nome = io.read()
    io.write("Digite a sua Idade: ")
    local idade = tonumber(io.read())
    while sexo ~= "M" and sexo ~= "F" do
        io.write("Digite o seu sexo [M/F]: ")
        sexo = string.sub(string.upper(tostring(io.read())), 1, 1) 
    end

    soma_idade = soma_idade + idade
    
    -- Nome do homem mais velho
    if sexo == "M" then
        num_homem = num_homem + 1
    end
    if num_homem == 1 and sexo == "M" then
        maior_idade_homem = idade
    elseif num_homem ~= 1 and sexo == "M" then
        if idade > maior_idade_homem then
            maior_idade_homem = idade
            nome_homem_velho = nome
        end
    end
    
    -- Número de mulheres com menos de 20 anos
    if sexo == "F" and idade < 20 then
        num_mulheres_menor20 = num_mulheres_menor20 + 1
    end
end

local media_idade = soma_idade / 4

if num_homem > 0 then
    print("A media de idade do grupo eh " .. string.format("%.2f",media_idade) .. " anos\nO nome do homem mais velho eh " .. nome_homem_velho .. "\nO numero de mulheres com menos de 20 anos eh " .. num_mulheres_menor20)
else
    print("A media de idade do grupo eh " .. string.format("%.2f", media_idade) .. " anos\nNao ha homens no grupo" .. "\nO numero de mulheres com menos de 20 anos eh " .. num_mulheres_menor20)
end