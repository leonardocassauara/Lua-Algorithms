--[[
    Problema: Usuário entra com duas sequências. Verifique se a segunda sequência é uma subsequência da primeira. Isso é os elementos dessa sequência estão inclusos na primeira e
              não são necessariamente adjacentes, mas mantém a ordem. Retornar se a segunda sequência é ou não uma subsequência da primeira sequência.
    Abstração:
                1. Ler valores do usuário
                    1.1. Número de elementos da primeira sequência
                    1.2. Número de elementos da segunda sequência
                    1.3. Primeira sequência (for)
                    1.4. Segunda sequência (for)
                2. Verificar elementos das sequências
                    2.1. Verificar se um elemento i da segunda sequência está presente na primeira sequência
                    2.2. Se estiver presente, adicionar o elemento i a uma tabela. e fazer o mesmo processo para o elemento i+1, porém,
                         como a ordem importa, a verificação deve começar a partir do índice de parada da verificação anterior + 1
                    2.3. Se não estiver presente, retornar "NÃO", como resposta.
                    2.4. Após a verificação, se a nova tabela formada corresponder a segunde sequência, então temos uma subsequência. Retornar "SIM".
                3. Imprimir resultados
]]

io.write("Digite o numero de elementos da primeira sequencia: ")
local lenghtA = tonumber(io.read())
io.write("Digite o numero de elementos da segunda sequencia: ")
local lenghtB = tonumber(io.read())

local seqA = {}
io.write("Digite os elementos da primeira sequencia: \n")
for i = 1, lenghtA do
    seqA[i] = tonumber(io.read())
end

local seqB = {}
io.write("Digite os elementos da segunda sequencia: ")
for i = 1, lenghtB do
    seqB[i] = tonumber(io.read())
end

local indiceParada = 1
local provaReal = {}
local resposta = nil

for i = 1, lenghtB do
    for j = 1, lenghtA do
        if indiceParada > lenghtA then
            resposta = "N"
            i = lenghtB
            break
        end
        if i ~= 1  and j == 1 then
            j = indiceParada
        end
        if seqB[i] == seqA[j] then
            table.insert(provaReal, seqB[i])
            indiceParada = j + 1
            break
        end
        if j == lenghtA and seqB[i] ~= seqA[j] or indiceParada > lenghtA then
            resposta = "N"
            i = lenghtB
            break
        end
    end
end


if resposta ~= "N" then
    for i = 1, #provaReal do
        if provaReal[i] == seqB[i] then
            resposta = 'S'
        else
            break
        end
    end 
end

print("B eh subsequencia de A? > " .. resposta)