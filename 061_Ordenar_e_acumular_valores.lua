--[[Problema: Leia 4 valores do usuário, esses valores serão Saldo, conta1, conta2 e conta3, e retorne o maior número de contas que é possível pagar com o valor do saldo
    Abstração:  1. O que o problema pede?
                    1.1. Maior número de contas pagas baseado no valor de Saldo
                2. Quais informações são necessárias?
                    2.1. Saldo
                    2.2. Valor das três contas
                3. Há alguma condicionante?
                    3.1. O maior número de contas devem se pagas, por exemplo, se saldo = 100 e contas (80, 30, 30), a prioridade deve ser as duas de 30
                4. Organização das ideias
                    4.1. Temos o valor do Saldo e das contas, podemos ordenar os valores de forma crescente
                    4.2. Com isso, podemos somar os valores até o limiar entre soma e saldo, enquanto atualizamos um contador
                    4.3. No final, imprimimos o resultado
                5. Passos
                    5.1. Ler valores
                    5.2. Ordenar valores em ordem crescente
                    5.3. Somar valores e incrementar contador comparando a soma com os valores de saldo e contas
                    5.4. Imprimir output
]]

local saldo, conta1, conta2, conta3 = tonumber(io.read()), tonumber(io.read()), tonumber(io.read()), tonumber(io.read())
local soma, contador, aux = 0, 0, 0

-- Ordenar os valores crescentemente
if conta1 > conta2 then
    aux = conta1
    conta1 = conta2
    conta2 = aux
end
if conta1 > conta3 then
    aux = conta1
    conta1 = conta3
    conta3 = aux
end
if conta2 > conta3 then
    aux = conta2
    conta2 = conta3
    conta3 = aux
end

-- Somar valores e Incrementar contador
if saldo - conta1 >= 0 then
    soma = soma + conta1
    contador = contador + 1
end
if (saldo - soma) - conta2 >= 0 then
    soma = soma + conta2
    contador = contador + 1
end
if (saldo - soma) - conta3 >= 0 then
    soma = soma + conta3
    contador = contador + 1
end

print(contador)