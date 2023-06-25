--[[Problema: Crie o jogo de pedra-papel-tesoura. Imprima um menu dizendo as opçÕes de jogada do jogador. Leia a opção escolhida. Gere uma opção aleatória de jogada para o PC
    Abstração:  1. Imprima um menu com as opções de jogada
                2. Leia a jogada
                3. Faça a jogador do computador
                4. Compare a jogada do usuário com a jogado do computador
                5. Imprima os resultados
]]

print("[1] Pedra\n[2] Papel\n[3] Tesoura")
local usuario = tonumber(io.read())

local pc = math.random(1, 3)

local possibilidade = {'Pedra', 'Papel', 'Tesoura'}

if pc == usuario then
    print('Empate! Ambos escolheram ' .. pc)
else
    if pc == 1 and usuario == 2 then
        print("Vencedor! O computador escolheu " .. possibilidade[pc] .. ' e voce escolheu ' .. possibilidade[usuario])
    elseif pc == 1 and usuario == 3 then
        print("Derrota. O computador escolheu " .. possibilidade[pc] .. ' e voce escolheu ' .. possibilidade[usuario])
    elseif pc == 2 and usuario == 1 then
        print("Derrota. O computador escolheu " .. possibilidade[pc] .. ' e voce escolheu ' .. possibilidade[usuario])
    elseif pc == 2 and usuario == 3 then
        print("Vencedor! O computador escolheu " .. possibilidade[pc] .. ' e voce escolheu ' .. possibilidade[usuario])
    elseif pc == 3 and usuario == 1 then
        print("Vencedor! O computador escolheu " .. possibilidade[pc] .. ' e voce escolheu ' .. possibilidade[usuario])
    elseif pc == 3 and usuario == 2 then
        print("Derrota. O computador escolheu " .. possibilidade[pc] .. ' e voce escolheu ' .. possibilidade[usuario])
    end
end
