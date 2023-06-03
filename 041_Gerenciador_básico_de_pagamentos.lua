--[[Problema: Leia o valor da mercadoria e exiba um menu para escolha da modalidade de pagamento: [1] a vista no dinheiro com 10% off, [2] a vista no cartão com 5% off,
              [3] 2x no cartão, valor normal, [4] 3x ou mais no cartão (pergunta numero de parcelas) com 20% de juros
    Abstração:  1. Ler valor da mercadoria
                2. Imprimir menu exibidindo as 4 opções
                3. Ler menu
                4. Montar um if-statement para o valor de menu escolhido
                    4.1. Se 1, valorFinal recebe valor * 0,9
                    4.2. Se 2, valorFinal recebe valor * 0,95
                    4.3. Se 3, valorFinal recebe valor / 2 (2 parcelas)
                    4.4. Se 4, ler numero de parcelas, valorFinak recebe valor * 1,2 / numero de parcelas
                5. Imprimir resultados
]]

io.write("Qual o valor da mercadoria? R$")
local valor = tonumber(io.read())

io.write("\n[1] Pagamento a vista no dinheiro(10% OFF)\n[2] Pagamento a vista no cartao (5% OFF)\n[3] 2x no cartao (valor normal)\n[4] 3x ou mais no cartao (juros de 20% no valor total)\nSelecione a modalidade de pagamento: ")
local menu = tonumber(io.read())

local valorFinal = nil

io.write("\nPagando ")
if menu == 1 then
    valorFinal = valor * 0.9
    io.write('a vista no dinheiro, o valor sinal sera: ')
elseif menu == 2 then
    valorFinal = valor * 0.95
    io.write('a vista no cartao, o valor final sera: ')
elseif menu == 3 then
    valorFinal = valor / 2
    io.write("parcelado 2x no cartao, serao 2 parcelas de: ")
elseif menu == 4 then
    io.write("parcelado no cartao, serao quantas parcelas? ")
    local parcelas = tonumber(io.read())
    valorFinal = valor * 1.2 / parcelas
    io.write("\nParcelado " .. parcelas .. "x no cartao, serao " .. parcelas .. ' parcelas de: ')
end
io.write("R$" .. string.format("%.2f", valorFinal) .. '\n')