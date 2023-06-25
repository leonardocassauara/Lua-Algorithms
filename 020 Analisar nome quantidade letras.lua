--[[Problema: Analisar um nome completo de uma pessoa, Imprimir em maiuscula e minúscula, Imprimir quantas letras tem nome completo e primeiro nome
    Abstração:   1. Ler nome completo da pessoa
                 2. Usar os comandos: string.upper(nome), string.lower(nome), string.sub(nome, nil, " "), strin.len(nome)
                 3. Imprimir os resultados
]]

print("Digite o seu nome completo") local nome = io.read()

local nome_char = string.gsub(nome, " ", "")

print("O seu nome e " .. string.upper(nome) .. " e " .. string.lower(nome))
print("O seu nome completo tem " .. #nome_char .. " letras")
print("O seu primeiro nome tem " .. #string.match(nome, "(.-)%s") .. " letras")