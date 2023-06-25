--[[Problema: a partir do valor da casa, salário e anos de pagamento, verificar se o empréstimo está aprovado para as condições do usuário
    Abstração:  1. Ler valor do desejado pelo usuário
                2. Ler salário do usuário
                3. Ler anos de financiamento
                4. Fazer if com a condição: prestação mensal <= 30% do salário
                    4.1. Se atender, então empréstimo aprovado
                    4.2. Se não, então empréstimo negado
]]

io.write("Digite o valor do imovel desejado: R$")
local imovel = tonumber(io.read())

io.write("\nDigite o valor do seu salario: R$")
local salario = tonumber(io.read())

io.write("\nDigite o tempo em anos que pretende realizar o pagamento das prestacoes: ")
local ano = tonumber(io.read())

local prestacao_mensal = imovel / math.ceil(ano * 12)

if prestacao_mensal > salario * 0.3 then
    print("\nEmprestimo negado. \nO valor das prestacoes superam 30% do seu salario")
else
    print("\nEmprestimo cedido!\nSerao " .. math.ceil(ano*12) .. " prestacoes mensais de R$" .. string.format("%.2f", prestacao_mensal))
end

print("\n30% do seu salario = R$" .. string.format("%.2f", salario*0.3) .. "\nValor da prestacao = R$" .. string.format("%.2f", prestacao_mensal))