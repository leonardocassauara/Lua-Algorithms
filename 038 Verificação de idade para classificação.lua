--[[Problema: Calcular idade do usuário e dizer em qual condição do campeonato ele se qualifica
    Abstração:  1. Ler data de nascimento do usuário
                1.1 os.date("*t")
                2. Calcular idade exata comparando pares ordenados
                3. Verificar condições de classificação
                4. Imprimir resultados
]]

-- Elicitação dos dados para cálculo da idade 
io.write("Digite o seu dia de nascimento (dd): ")
local user_day = tonumber(io.read())

io.write("Digite o seu mes de nascimento (mm): ")
local user_month = tonumber(io.read())

io.write("Digite o seu ano de nascimento (yyyy): ")
local user_year = tonumber(io.read())

local today_day = os.date("*t").day
local today_month = os.date("*t").month
local today_year = os.date("*t").year

local user_md = {month = user_month, day = user_day}
local today_md = {month = today_month, day = today_day}

-- Cálculo da Idade
local age = today_year - user_year

if (user_md.month >= today_md.month) and (user_md.day >= today_md.day) then
    age = age - 1
end
print("\n")

-- Classificação com base na idade
if 6 < age and age <= 9 then
    print('A sua classificacao e MIRIM')
elseif 9 < age and age <= 14 then
    print('A sua classificacao e INFANTIL')
elseif 14 < age and age <= 19 then
    print('A sua classificacao e JUNIOR')
elseif 19 < age and age <= 25 then
    print('A sua classificacao e SENIOR')
elseif 25 < age then
    print('A sua classificacao e MASTER')
end