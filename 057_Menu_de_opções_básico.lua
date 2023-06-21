--[[Problema: Leia dois valores numéricos e imprima um menu na tela mostrando as opções disponíveis, o programa deve realizar cada operação requisitada
              até que a opção sair seja selecionada.
    Abstração:  1. O programa vai rodar mais de uma vez?
                    1.1. Sim, indeterminadas vezes
                2. Quais informações são necessárias?
                    2.1. Números para realizar as operações
                    2.2. Input do usuário para o menu
                    2.3. Menu
                3. Quais operações constarão no menu?
                    3.1. somar, multiplicar, maior, novos números, encerrar
                4. Haverá tratamento de erro para valores fora do intervalo?
                    4.1. Sim, utilizar um while para impedir que valores fora do intervalo do menu prossigam no código
                5. Imprimir resultados
]]

function somar(a, b)
    return a + b
end

function multiplicar(a, b)
    return a * b
end

function maior_valor(a, b)
    if a > b then
        return a
    else
        return b
    end
end

io.write("Digite um valor qualquer: ")
local a = tonumber(io.read())
io.write("Digite mais um valor qualquer: ")
local b = tonumber(io.read())


while true do
    local entrada = 10
    while not (1 <= entrada and entrada <= 5) do
        io.write("\n[ 1 ] Somar\n[ 2 ] Multiplicar\n[ 3 ] Maior valor\n[ 4 ] Alterar numeros\n[ 5 ] Encerrar\nDigite a sua opcao > ")
        entrada = tonumber(io.read())
    end

    if entrada == 1 then
        print(somar(a, b))
    elseif entrada == 2 then
        print(multiplicar(a, b))
    elseif entrada == 3 then
        print(maior_valor(a, b))
    elseif entrada == 4 then
        io.write("\nDigite um valor qualquer: ")
        a = tonumber(io.read())
        io.write("\nDigite mais um valor qualquer: ")
        b = tonumber(io.read())
    elseif entrada == 5 then
        break
    end
end

print("\nFinalizando...")