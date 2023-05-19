-- Problema: Dado um ângulo em graus, calcular e imprimir o seu seno, cosseno e tangente
-- Abstração:   1. Ler valor ângulo em graus
--              2. Converter de graus para radiano
--              3. Calcular seno
--              4. Calcular cosseno
--              5. Calcula tangente
--              6. Imprimir resultados

print("Digite um angulo qualquer: ") local angulo_grau = io.read()

local angulo_rad = math.rad(angulo_grau)

local seno = string.format("%.2f", math.sin(angulo_rad))
local cosseno = string.format("%.2f", math.cos(angulo_rad))
local tangente = string.format("%.2f", math.tan(angulo_rad))

print("Para o angulo de " .. angulo_grau .. " graus:" .. "\nSeno = " .. seno .. "\nCosseno = " .. cosseno .. "\nTangente = " .. tangente)