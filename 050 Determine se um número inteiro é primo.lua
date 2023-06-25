--[[Problema: Determine se um número inteiro é primo ou não
    Abstração:  1. Ler valor inteiro
                2. Verificar se ele é primo
                    2.1. Verificar quantidade de divisores do número inteiro lido
                    2.2. Usar loop for para dividir o valor inteiro por ele mesmo e pelos seus antecessores de 1 em 1 repetidamente até que o valor chegue a 1
                    2.3. Toda vez que o resto da divisão for 0, temos um divisor.
                    2.4. Se o número de divisores for diferente de 2, o número inteiro é primo
                    2.5. for i = num, 1, -1 do
                            if num % i == 0 then
                                divisores = divisores + 1
                            end
                          end
                    2.6. Comparar número de divisores
                3. Imprimir resultados  
]]
io.write("Digite um numero inteiro qualquer: ")
local num = tonumber(io.read())
local divisores = 0

for i = num, 1, -1 do
    if num % i == 0 then
        divisores = divisores + 1
    end
end

if divisores == 2 then
    print("O numero " .. num .. ' eh primo')
else
    print("O numero " .. num .. ' nao eh primo')
end
