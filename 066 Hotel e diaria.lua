--[[
    Problema: calcular o preço de estadia no Hotel com base no valor da diária D no dia 0, o valor de aumento da diária A a partir dos dias após o dia 0 (1-15, inclusive), e, 
              o dia de chegada N ao hotel.
              Obs.: o dia de saída é igual para todos. (31 dias para quem chegou no dia 0, 30 dias para o dia 1...)
    Abstração:
                1. Ler Diária 0
                2. Ler Aumento
                3. Ler Dia de de chegada
                4. Calcular Nova Diária do Hotel
                    4.1. Nova Diária = (D + nA)
                    4.2. n = 0 (Para o dia 0)
                    4.3. n = 1 (Para o dia 1)
                    4.4. n = 31 - (31 - chegada + 1)
                5. Calcular Estadia
                    5.1 Calcular tempo de estadia: 31 - (dia de chegada - 1)
                    5.2. Calcular estadia: tempo de estaida * nova diária
                5. Imprimir resultado
]]
function calcularNovaDiaria(diaria, aumento, chegada)
    local n = 31 - (31 - chegada + 1)
    if chegada > 15 then
        n = 14
    end
    local novaDiaria = diaria + aumento * n
    return novaDiaria
end


function calcularEstadia(novaDiaria, chegada)
    local tempoEstadia = 31 - (chegada - 1)
    local estadia = novaDiaria * tempoEstadia
    return estadia
end


function main()
    local diaria  = tonumber(io.read())
    local aumento = tonumber(io.read())
    local chegada = tonumber(io.read())    

    local novaDiaria = calcularNovaDiaria(diaria, aumento, chegada)
    local estadia    = calcularEstadia(novaDiaria, chegada)

    print(estadia)
end


main()