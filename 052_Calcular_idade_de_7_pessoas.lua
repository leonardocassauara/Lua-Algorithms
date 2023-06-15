--[[Problema: Leia a data de nascimento de 7 pessoas e diga se elas são maior de idade
    Abstração:  1. O programa vai rodar mais de uma vez? Sim, 7 vezes
                    1.1. While ou for que itere 7 vezes
                2. Quais informações são necessárias?
                    2.1. Data de nascimento do indivíduo
                    2.2. Data atual
                    2.3. Idade
                3. Como se obtem cada informação necessária?
                    3.1. Data de nascimento do indivíduo
                            3.1.1. Ler data de nascimento no formato dd/mm/yyyy
                            3.1.2. Manipular strings para valores específicos da string
                    3.2. Data atual
                            3.2.1. Usar biblioteca os.date para retornar data atual
                            3.2.2. Manipular strings para pegar valores específicos
                    3.3. Idade
                            3.3.1. Comparar data de nascimento do indivíduo e data atual para calcular idade
                            3.3.2. Idade = ano_atual - ano_nascimento - zero_ou_um
                4. Como solucionar o problema com essas informações em mãos?
                            4.1.1. If idade >= 18 then
                                        maior de idade
                                    else
                                        menor de idade
                5. Imprimir resultados
Treinar essa forma de abstrair é essencial para resolver problemas de forma eficiente!!!
]]

local data_atual = {tonumber(os.date("*t").day), tonumber(os.date("*t").month), tonumber(os.date("*t").year)}

for i = 1, 7 do
    io.write("Digite o seu nome: ")
    local nome = io.read()
    local data_nascimento_user = {}
    io.write("Digite sua data de nascimento no formato dd/mm/aaaa: ")
    local x = tostring(io.read())
    x = string.gsub(x,"/","")
    table.insert(data_nascimento_user, tonumber(string.sub(x, 1, 2)))
    table.insert(data_nascimento_user, tonumber(string.sub(x, 3, 4)))
    table.insert(data_nascimento_user, tonumber(string.sub(x, 5, 8)))

    local idade = 0
    if data_atual[2] > data_nascimento_user[2] then
        idade = data_atual[3] - data_nascimento_user[3]
    elseif data_atual[2] == data_nascimento_user[2] and data_atual[1] > data_nascimento_user[1] then
        idade = data_atual[3] - data_nascimento_user[3]
    else
        idade = data_atual[3] - data_nascimento_user[3] - 1
    end

    if idade >= 18 then
        print(nome .. ' eh maior de idade')
    else
        print(nome .. " nao eh maior de idade")
    end
    io.write("\n")
end
