--[[Problema: Criar um programa que converta a base decimal para binária, octal ou hexadecimal. Crie um menu de seleção
    Abstração:  1. Ler valor decimal
                2. Imprimir menu em texto
                3. Ler menu
                4. Criar If-statement para os valores de menu
                5. Converter o valor
                    5.1. Convertendo para Binário
                        5.1.1. Divisões sucessivas por 2. O quociente é continuamente dividido, enquanto os restos formam os digitos binários de tras pra frente
                        5.1.2. num % 2 = resto
                        5.1.3. num / 2 = quociente em ponto flutuante
                        5.1.4. string.format e tonumber
                        5.1.5. para converter para as outras bases basta alterar o valor do divisor para a base e fazer alguns ajustes específicos
                6. Imprimir resultado
]]
function converterDecBinOctHex(numero, base)
    local resto = nil
    local resultado_invertido = {}
    local resultado = ""
    while numero ~= 0 do
        resto = numero % base
        numero = math.floor(numero / base)
        print(numero)
        if base == 16 then
            if resto == 10 then
                resto = 'A'
            elseif resto == 11 then
                resto = 'B'
            elseif resto == 12 then
                resto = 'C'
            elseif resto == 13 then
                resto = 'D'
            elseif resto == 14 then
                resto = 'E'
            elseif resto == 15 then
                resto = 'F'
            end
        end
        table.insert(resultado_invertido, resto)
    end
    for i = 1, #resultado_invertido do
        resultado = resultado .. tostring(resultado_invertido[i])
    end
    return string.reverse(resultado)
end

io.write("Digite um valor decimal: ")
local entrada = tonumber(io.read())
local num = entrada 

local menu = nil

while ((menu ~= 1) and (menu ~= 2) and (menu ~= 3)) do
    print("[ 1 ] Binario \n[ 2 ] Octal \n[ 3 ] Hexadecimal")
    io.write("Para qual base converter > ")
    menu = tonumber(io.read())
end

if menu == 1 then
    num = converterDecBinOctHex(num, 2)
elseif menu == 2 then
    num =converterDecBinOctHex(num, 8)
elseif menu == 3 then
    num = converterDecBinOctHex(num, 16)
end

print(entrada .. ' = ' .. num)