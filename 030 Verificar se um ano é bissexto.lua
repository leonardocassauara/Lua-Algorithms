--[[Problema: Ler um ano pelo usuário, verificar se ele é bissexto
    Abstração:  1. Ler ano pelo usuárrio
                2. Verificar condição para o ano ser bissexto
                    2.1. O ano deve ser divisível por 4
                    2.2. Se for múltiplo de 100, então deve ser divisível por 400
                3. Imprimir resultados
]]

print("Digite um valor para ano: ")

local ano = nil

while (ano == nil or ano < 1400) do
    ano = math.floor(tonumber(io.read()))
end

if (ano % 4 == 0 or ano % 400 == 0) then
    print("O ano " .. ano .. ' e bissexto')
else
    print("O ano " .. ano .. ' nao e bissexto')
end