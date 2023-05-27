--[[Problema: Leia a data de nascimento do usuário e calcule sua idade, a partir dela verifique as condições de alistamento militar
    Abstração:  1. Ler dados do usuário
                2. Calcular idade
]]

local dia_atual = os.date("*t").day
local mes_atual = os.date("*t").month
local ano_atual = os.date("*t").year
local par_atual = {mes = mes_atual, dia = dia_atual}

io.write("Digite o seu dia de nascimento: ")
local dia_user = tonumber(io.read())
io.write("\nDigite o seu mes de nascimento: ")
local mes_user = tonumber(io.read())
io.write("\nDigite o seu ano de nascimento: ")
local ano_user = tonumber(io.read())
local par_user = {mes = mes_user, dia = dia_user}

local idade = ano_atual - ano_user

if par_atual.mes > par_user.mes then
    idade = idade - 1
else
    if par_atual.dia < par_user.dia then
        idade = idade -1
    end
end

if idade == 18 then
    print("\nVoce deve se alistar imediatamente")
elseif idade < 18 then
    print("\nVoce ainda nao tem idade para se alistar. Faltam " .. 18 - idade .. ' anos')
elseif idade > 18 then
    print("\nJa passou da hora de se alistar! Voce esta " .. idade - 18 .. ' anos atrasado')
end
