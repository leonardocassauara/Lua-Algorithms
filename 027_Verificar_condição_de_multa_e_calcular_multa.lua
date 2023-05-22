--[[Problema: Leia a velocidade de um carro, se ele ultrapassar 80 km/h, multe-o em R$7 por casa km acima do limite de velocidade
    Abstração:  1. Ler velocidade do carro
                2. Usar if statement para verificar se a velocidade do carro é maior ou igual a 80 km/h
                3. Se True, então multar R$7 por casa km acima
                4. Se False, parabenizar motorista pela boa conduta
]]

print("Digite a velocidade do carro: ")
local velocidade = math.floor(tonumber(io.read()))
local multa = nil

if (velocidade >= 80) then
    multa = (velocidade - 79) * 7
    print("Voce foi multado! Pague R$" .. multa .. ",00")
else
    print("Parabens pela boa conduta.")
end