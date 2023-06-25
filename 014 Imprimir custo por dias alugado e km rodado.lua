-- Problema: Calcular custo de aluguel do carro + km rodado, imprimir resultado
-- Abstração:   1. Ler quantos dias foi alugado
--              2. Ler quantos km rodados
--              3. Calcular custo: R$60 por dia, R$0,15 por km
--              4. Imprimir resultado

print("Digite o numero de dias que o carro foi alugado: ") local dias = io.read()
print("Digite a quantidade de km rodados pelo carro: ") local km = io.read()

local custo = dias * 60 + km * 0.15

print("Apos utilizar o veiculo alugado por " .. dias .. " dias, e percorrer " .. km .. " quilometros" .. "\nO valor total a pagar sera de: R$" .. custo)