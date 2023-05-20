--[[Problema: Imprima as casas decimais de um número entre 1 e 9999 dado pelo usuário
    Abstração:  1. Ler número entre 1 e 9999
                    1.1. Usar loop while para formatação do valor
                2. Dividir o número por 1, 10 e 1000, pegar a parte inteira e então pegar o resto da divisão por 10
                3. Imprimir o resultado
]]

local numero = -1
while not (1 <= numero and numero <= 9999) do
    print("Digite um numero inteiro entre 1 e 9999: ") 
    numero = tonumber(io.read())
end

local milhar, centena, dezena, unidade

if (numero >= 1000) then
    milhar = math.floor(numero / 1000) % 10
end

if (numero >= 100) then
    centena = math.floor(numero / 100) % 10
end

if (numero >= 10) then
    dezena = math.floor(numero / 10) % 10
end

if (numero >= 1) then
    unidade = math.floor(numero / 1) % 10
end

print("Milhar = " .. milhar .. ' Centena = ' .. centena .. ' Dezena = ' .. dezena .. ' Unidade = ' .. unidade)