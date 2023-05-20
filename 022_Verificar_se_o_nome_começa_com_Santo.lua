--[[Problema: Verificar se o nome da cidade do usuário começa com Santo
    Abstração:  1. Ler nome da cidade
                2. Retirar whitespace e formatar para upper ou lower
                3. Comparar se os 5 primeiros digitos começam com a expressão "Santo"
    Observação: Nesse caso, o uso das re's não é necessário, pois sabemos o número de letras e a posição das palavras que queremos
]]

print("Digite o nome da sua cidade: ")
local cidade = string.lower(io.read())

cidade = string.gsub(cidade, " ", '')

print(string.sub(cidade, 1, 5) == "santo")