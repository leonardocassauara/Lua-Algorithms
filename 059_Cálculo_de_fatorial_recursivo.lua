--[[Problema: Calcule novamente o fatorial de um número inteiro, mas usando funções e recursividade
    Abstração:  1. Quantas vezes o programa vai rodar?
                    1.1. 1, graças a recursividade
                2. Quais informações são necessárias?
                    2.1. Valor inteiro do usuário
                    2.2. O que é função recursiva: uma função que chama ela mesma (recomendado apenas em casos em que a função chama ela mesma uma única vez por ciclo)
                    2.3. Nesse sentido, fatorial de 5, por exemplo, é igual a 5 * fat(4), e fat(4) é igual a 4 * fat(3), esses passos são repetidos até atingir o caso base.
                    2.4. O caso base, no cálculo de fatorial, é o fatorial de 1 ou 0 que é igual a 1.
                    2.5. Após atingir o caminho base, a recursão faz o caminho de "volta", calculando o fatorial desejado.
                3. Imprimir resultados
]]
local function calcularFatorial(numeroInteiro)
    if numeroInteiro <= 1 then
        return 1
    else
        return numeroInteiro * calcularFatorial(numeroInteiro - 1)
    end
end

local fat = calcularFatorial(5)

print(fat)