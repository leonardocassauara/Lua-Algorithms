--[[Problema: Imprima uma quantidade de termos de uma PA determinada pelo usuário, até que o valor digitado seja 0
    Abstração:  1. Quantas vezes o programa vai rodar?
                    1.1. indeterminadas vezes (while)
                2. Quais informações são necessárias
                    2.1. Primeiro termo da PA (a1)
                    2.2. Razão da PA (r)
                    2.3. Número de termos que serão imprimidos na tela (while)
                    2.4. Acumulador do numero de termos impressos até agora
                3. Como usar essas informações?
                    3.1. Usar um loop for que começa em 0 e vai até o número de termos selecionado para imprimir os termos da PA
                    3.2. Usar um if-statement para comparar o valor do número de termos com 0, se igual a 0 então encerrar programa
                    3.3. (Bonus) Elseif com numero de termos igual a -1 para mostrar a sequência inteira
                    3.4. Tudo isso dentro de um while True
                4. Imprimir resultados
]]

io.write("Digite o primeiro termo da PA(a1): ")
local a1 = tonumber(io.read())

io.write("Digita a razao da PA(r): ")
local r = tonumber(io.read())

for i = 0, 9, 1 do
    io.write(a1 + r * i .. " ")
end
local total = 9
local impressos = 9

while true do
    io.write("\nQuantos a mais serao impressos? ")
    local termosadicionais = tonumber(io.read())
    total = total + termosadicionais

    if termosadicionais == 0 then
        break
    elseif termosadicionais == -1 then
        for i = 0, total+1, 1 do 
            io.write(a1 + r * i .. " ")
        end
    else
        for i = impressos + 1, total do
            io.write(a1 + r * i .. " ")
        end
    end
    impressos = impressos + termosadicionais
    io.write("\n[ -1 ] Mostra toda a sequencia\n")
end
