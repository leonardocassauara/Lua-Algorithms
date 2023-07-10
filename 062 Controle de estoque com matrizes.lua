--[[
    Problema: Usuário define numero de linha(tipo) e coluna(tamanho) da matriz do estoque. Além de definir os valores em cada índice e a quantidade de pedidos recebeida.
              Um pedido deve ser feito com a entrada do tipo e tamanho na matriz, se o valor na matriz for igual a 0, não é possível realizar o pedido. Retorne o número de pedidos
              feitos com sucesso.
    Abstração:
                1. Ler entradas do Usuário
                    1.1. Tamanho da matriz
                    1.2. Valores da matriz
                    1.3. Número de pedidos
                    1.4. Localização dos pedidos na matriz
                2. Criar Matriz
                    2.1. Usar parâmetros obtidos pelo usuário para criar a Matriz
                3. Lista condições de realização do pedido
                4. Imprimir número de pedidos realizados com sucesso
]]

function criarMatriz(linhas, colunas)
    local matriz = {}
    for i = 1, linhas do
        matriz[i] = {}
        for j = 1, colunas do
            io.write("[ ".. i .. " ] [ " .. j .. " ] > ")
            matriz[i][j] = tonumber(io.read())
        end
        io.write("\n")
    end
    return matriz
end


function lerPedidos(numPedidos)
    local pedidoTipo = {}
    local pedidoTamanho = {}
    for i = 1, numPedidos do
        io.write("Qual o tipo da roupa? ")
        pedidoTipo[i] = tonumber(io.read())
        io.write("Qual o tamanho dela? ")
        pedidoTamanho[i] = tonumber(io.read())
        io.write("\n")
    end
    return pedidoTipo, pedidoTamanho
end


function fazerPedido(numPedidos, estoque, pedidosTipo, pedidosTamanho)
    local pedidosFeitos = 0
    for i = 1, numPedidos do
        if estoque[pedidosTipo[i]][pedidosTamanho[i]] > 0 then
            estoque[pedidosTipo[i]][pedidosTamanho[i]] = estoque[pedidosTipo[i]][pedidosTamanho[i]] - 1
            pedidosFeitos = pedidosFeitos + 1
        else
            print("Estamos sem estoque da roupa " .."[ " .. pedidosTipo[i] .. " ]" .. "[ ".. pedidosTamanho[i] .. " ]")
        end
    end
    return estoque, pedidosFeitos
end

io.write("Quantos tipos de roupa tem no estoque? ")
local linhas = tonumber(io.read())
io.write("Quantos tamanhos dessas roupas tem no estoque? ")
local colunas = tonumber(io.read())
io.write("Preencha com o numero de unidades disponiveis: \n")
local estoque = criarMatriz(linhas, colunas)
io.write("Quantos pedidos serao feitos? ")
local numPedidos = tonumber(io.read())

local pedidosTipo, pedidosTamanho = lerPedidos(numPedidos)
estoque, pedidosFeitos = fazerPedido(numPedidos, estoque, pedidosTipo, pedidosTamanho)


io.write("Estoque: \n")
for i = 1, linhas do
    for j = 1, colunas do
        io.write(estoque[i][j] .. " ")
    end
    io.write("\n")
end

print("Pedidos feitos: " .. pedidosFeitos)