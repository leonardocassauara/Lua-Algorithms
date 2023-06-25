print("Digite um número qualquer: ")
local valor = io.read()

valor = tonumber(valor)

print("O valor digitado foi: " .. valor)
print("O antecessor desse valor é: " .. valor - 1)
print("O sucessor   desse valor é: " .. valor + 1)