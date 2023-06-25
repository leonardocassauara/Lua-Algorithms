print("Digite qualquer coisa: ")
local valor = io.read()

print("O valor digitado foi: " .. valor)

local numero = tonumber(valor)
if numero ~= nil then
    print("O tipo do valor obtido é: " .. type(numero))
else
    print("O tipo do valor obtido é: " .. type(valor))
end
