--[[
    Problema: Usuário define número de vértices e arestas do Grafo. Para cada unidade de aresta, o usuário entra com o par de vértices não ordenado que estão sendo ligados.
              Novamente, o usuário define o número de sugestões de passeios nesse grafo, em seguida para cada passeio, declara o número de vértices que serão visitados
              e a ordem em que serão visitados. Retorne o número de passeios possíveis.
    Abstração:
                1. Ler dados do usuário
                    1.1. Número de vértices (salões)
                    1.2. Número de arestas  (tuneis)
                    1.3. Par de vértices ligados pelas Arestas
                    1.4. Número de sugestões de passeios
                    1.5. Número de vértices que serão visitados + ordem de visita
                2. Analisar número de vértices com número de arestas
                    2.1. Calcular maior número de arestas possiveis para n vertices
                         (((n - 3) * n) / 2) + n
                3. Analisar as sugestões de passeio
                    2.1. Arestas = Tabela que contém tabelas que contém um par de vértices: { {A, B}, {B, C} }
                    2.2. Arestas são não ordenadas, logo: {A, B} = {B, A}
                    2.3. A sugestão de passeio é uma tabela que contém os vértices que serão visitados ordenadamente
                         {A, B, C, D}
                    2.4. Verificar se nas arestas temos as tabelas {A, B}, {B, C} e {C, D}
                    2.5. Se não tiver, o passeio é impossível
                    2.6. Se tiver todos, o passeio é possível, então incrementar contador
                4. Imprimir resultados(contador).
]]
function lerArestas(numArestas)
    local pares = {}
    for i = 1, numArestas do
        io.write("Digite o par de vertices ligados pela aresta: [A B] ")
        local A, B = io.read("*n", "*n")
        local par = {A, B}
        table.insert(pares, par)
    end
    return pares
end


function lerPasseios(numPasseio)
    local passeios = {}
    for i = 1, numPasseio do
        io.write("Quantos vertices serao visitados nesse passeio " .. i .. "? ")
        local j = io.read("*n")
        local passeio = {}
        io.write("Digite os vertices que serao visitados: \n")
        for k = 1, j do
            io.write("[ " .. k .. " ] > ")
            passeio[k] = io.read("*n")
        end
        passeios[i] = passeio
    end
    return passeios
end


function analisarPasseio(passeio, arestas)
    local verificador, naoTemAresta, passeiosPossiveis = 0, 0, 0
    for i = 1, #passeio do                                                
        for j = 1, #passeio[i] - 1 do                                         
            local A, B = passeio[i][j], passeio[i][j+1]                       
            for k = 1, #arestas do                                             
                C, D = table.unpack(arestas[k])                               
                if (A == C and B == D) or (A == D and B == C) then            
                    verificador = verificador + 1                               
                    naoTemAresta = 0
                    break
                else
                    naoTemAresta = naoTemAresta + 1
                end
            end
                if naoTemAresta == #arestas then
                    verificador = 0
                    naoTemAresta = 0
                    goto fimDePasseio
                elseif verificador == #passeio[i] - 1 then
                    passeiosPossiveis = passeiosPossiveis + 1
                    verificador = 0
                    naoTemAresta = 0
                    goto fimDePasseio
            end
        end
        :: fimDePasseio ::
   end
   return passeiosPossiveis
end


function analisarVertices(vertices, numArestas)
    local maxArestas = (((vertices - 3) * vertices) / 2) + vertices
    if numArestas > maxArestas then
        return error("Eh impossivel existir " .. numArestas .. " arestas que ligam " .. vertices .. " vertices")
    end
    return vertices
end

io.write("Numero de saloes: ")
local vertices = tonumber(io.read())
io.write("Numero de tuneis: ")
local numArestas = tonumber(io.read())
vertices = analisarVertices(vertices, numArestas)
io.write("Quantos passeios? ")
local numPasseio = tonumber(io.read())

local arestas = lerArestas(numArestas)
local sugestoesPasseio = lerPasseios(numPasseio)
local passeiosPossiveis = analisarPasseio(sugestoesPasseio, arestas)


print(passeiosPossiveis)