--[[
    Problema: Calcule o valor total a ser pago no ingresso por duas amigas que irão ao cinema baseado na sua idade. até 17 = R$15 | 18 a 59 = R$30 | 60 ou mais = R$20.
              Restrição: 1 <= idade <= 100
    Abstração:
                1. Ler idade A
                2. Ler idade B
                3. Analisar idade
                4. Somar subtotal
                5. Imprimir resultado
]]
function analisarIdades(idadeA, idadeB)
    local tabelaIdade = {idadeA, idadeB}
    local subtotal = 0
    
    for i = 1, #tabelaIdade do
        if tabelaIdade[i] <= 17 then
            subtotal = subtotal + 15

        elseif 18 <= tabelaIdade[i] and tabelaIdade[i] <= 59 then
            subtotal = subtotal + 30
            
        else
            subtotal = subtotal + 20
        end
    end
    
    return subtotal
end


function main()
    local idadeA   = tonumber(io.read())
    local idadeB   = tonumber(io.read())
    local subtotal = analisarIdades(idadeA, idadeB)
    print(subtotal)
end


main()