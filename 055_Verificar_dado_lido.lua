--[[Problema: Leia o sexo de uma pessoa, mas só aceite M ou F como resposta se não peça para digitar novamente
    Abstração:  1. O programa vai rodar mais de uma vez?
                    1.1. Se o input for errado, sim (while)
                2. Quais informações são necessárias?
                    2.1. Apenas o sexo
                3. Imprima o resultado
]]

local sexo = nil

while sexo ~= "M" and sexo ~= "F" do
    io.write("Digite o seu sexo: [M/F] ")
    sexo = string.upper(tostring(io.read()))
end

print("Sexo '" .. sexo .. "' registrado com sucesso")