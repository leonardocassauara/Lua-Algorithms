--[[Problema: Leia os valores dos lados de um triângulo e verifique se eles atendem a condição de existência, se verdadeiro classificar o triângulo quanto ao lado
    Abstração:  1. Ler valores dos lados
                2. Verificar se os valores atendem a condição de existência do triângulo
                    2.1. Um lado deve ser maior que o módulo da diferença entre os outros dois e menor que a soma dos outros dois
                3. Classificar o triângulo formado quanto aos lados
                    3.1. Se os valores dos lados lidos forem iguais, temos um triângulo equilátero
                    3.2. Se os valores dos lados lidos forem diferentes, temos um triângulo escaleno
                    3.3. Se apenas dois lados forem iguais, temos um triângulo isoscéles
                4. Imprimir resultados
]]

io.write("Digite um valor para o lado de um triangulo: ")
local a = tonumber(io.read())
io.write("Digite o valor do proximo lado: ")
local b = tonumber(io.read())
io.write("Digite o valor do ultimo lado: ")
local c = tonumber(io.read())

io.write("\n")

if math.abs(a - b) < c and c < a + b then
    io.write("E possivel formar um triangulo ")
    if a == b and b == c then
        io.write("equilatero")
    elseif a == b or b == c or a == c then
        io.write("isosceles")
    else
        io.write("escaleno")
    end
    io.write(" com esses valores")
else
    print("Nao e possivel formar um triangulo com esses valores")
end