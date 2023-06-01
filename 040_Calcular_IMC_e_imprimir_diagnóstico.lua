--[[Problema: Leia a massa e a altura do usuário, calcule seu IMC e retorne a classificação de seu IMC
    Abstração:  1. Ler massa e altura do usuário
                2. Calcular IMC
                    2.1. IMC = peso / (altura ^ 2)
                3. Classificar IMC
                    3.1. IMC <= 18.5 = Abaixo do Peso
                    3.2. 18.5 < IMC <= 25 = Peso Ideal
                    3.3. 25 < IMC <= 30 = Sobre Peso
                    3.4. 30 < IMC <= 40 = Obesidade
                    3.5. 40 < IMC = Obesidade Mórbida
]] 

io.write("Digite sua massa (kg): ")
local massa = tonumber(io.read())
io.write("Digite sua altura (m): ")
local altura = tonumber(io.read())

local imc = massa / (altura ^ 2)

io.write("\nSeu IMC vale " .. string.format("%.2f", imc) .. '\nE sua classificacao e ')
if imc <= 18.5 then
    io.write("Abaixo do Peso")
elseif 18.5 < imc and imc <= 25 then
    io.write("Peso Ideal")
elseif 25 < imc and imc <= 30 then
    io.write("Sobre Peso")
elseif 30 < imc and imc <= 40 then
    io.write("Obesidade")
elseif imc < 40 then
    io.write("Obesidade Morbida")
end