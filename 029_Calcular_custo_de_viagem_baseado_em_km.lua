--[[Problema: Calcule o custo de uma viagem baseado na distância em Km, R$0,50 por Km para viagens de até 200 km, e R$0,45 para viagens superiores a 200 km
    Abstração:  1. Ler distância da viagem
                2. Montar if-statement para verificar a condição de viagem
                    2.1. Se viagem > 200, R$0,45 por km
                    2.2. Se não, R$0,50 por km
                3. Imprimir resultado
]]

print("Digite a distancia da viagem em Km: ")
local viagem = tonumber(io.read())
local custo = nil

if viagem > 200 then
    custo = 0.45 * viagem
else
    custo = 0.5 * viagem
end

print("Para uma viagem de " .. string.format("%.2f", viagem) .. ' Km\nO custo sera de aproximadamente R$' .. string.format("%.2f", custo))