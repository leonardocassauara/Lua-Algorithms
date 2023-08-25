--[[
    Problema: Determinar o valor do único número ilegível de um quadrado mágico de dimensões e valores definidos pelo usuários, isso é a soma das colunas, linhas e diagonais
              são iguais, além disso números não podem se repetir. Retorne o valor do número ilegível (0) e a sua localização no quadrado com indíce inicial = 1
    Abstração:
                1. Ler dimensão do quadrado
                2. Ler valores da matriz formada (dxd)
                3. Determinar posição do número ilegível
                    3.1. Usar algoritmo de busca para encontrar os índices que representam a posição de valor 0
                4. A partir da posição, calcular o número ilegível
                    4.1. Usar a linha ou colunas para determinar o número ilegível
                    4.2. A partir do número de linhas, por exemplo, e a linha do número ilegível calcular o valor do
                         número ilegível através da soma dos elementos de uma linha diferente do número ilegível
                5. Imprimir resultados
]]
function lerQuadrado(dimensao)
    local matriz = {}

    for i = 1, dimensao do
        matriz[i] = {}
        for j = 1, dimensao do
            matriz[i][j] = io.read("*n")
        end
    end

    return matriz
end


function posicaoNumIlegivel(matriz)
    for i = 1, #matriz do
        
        for j = 1, #matriz do
            
            if matriz[i][j] == 0 then
                local linha, coluna = i, j
                
                return linha, coluna
            end
        end
    end
end


function calcularNumIlegivel(matriz, linhaNumIle)
    local somaTotal, somaAdjNumIle = 0, 0
    
    for i = 1, #matriz do
        if i ~= linhaNumIle then
            for j = 1, #matriz do
                somaTotal = somaTotal + matriz[i][j]
            end
            break 
        end
    end

    for j = 1, #matriz do
        if matriz[linhaNumIle][j] ~= 0 then
            somaAdjNumIle = somaAdjNumIle + matriz[linhaNumIle][j]
        end 
    end

    local numIle = somaTotal - somaAdjNumIle
    return numIle
end


function main()
    local dimensao = tonumber(io.read())
    local quadradoMagico = lerQuadrado(dimensao)
    local linhaNumIlegivel, colunaNumIlegivel = posicaoNumIlegivel(quadradoMagico)
    local numIlegivel = calcularNumIlegivel(quadradoMagico, linhaNumIlegivel)
    print(numIlegivel)
    print(linhaNumIlegivel)
    print(colunaNumIlegivel)
end


main()