program SistemaRecomendacao

# Codificação dos produtos (12 no total)
# Eletrônicos: 0-3, Roupas: 4-7, Eletrodomésticos: 8-11, Livros: 12-15
# Histórico de compras: Smartphone, Jeans, Micro-ondas, Ficção
X0 := 1   # Smartphone
X1 := 0   # Laptop
X2 := 0   # Tablet
X3 := 0   # Fones de ouvido
X4 := 0   # Camisa
X5 := 1   # Jeans
X6 := 0   # Jaqueta
X7 := 0   # Sapatos
X8 := 0   # Geladeira
X9 := 1   # Micro-ondas
X10 := 0  # Máquina de lavar
X11 := 0  # Ar condicionado
X12 := 1  # Ficção
X13 := 0  # Não-ficção
X14 := 0  # Ficção científica
X15 := 0  # Fantasia

# Camada oculta (10 neurônios) e pesos simplificados para demonstração
# W1[i][j] = 0.5 (peso fixo), b1[j] = 0.5
# W2[j][k] = 0.5 (peso fixo), b2[k] = 0.5

# Soma para a camada oculta (Z1[j] = sum_i X[i]*0.5 + 0.5)
sumX := X0 + X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9 + X10 + X11 + X12 + X13 + X14 + X15
Z1 := (sumX * 0.5) + 0.5

# Ativação ReLU (como todos valores são >= 0, relu = Z1)
A1 := Z1

# Camada de saída (16 saídas, uma por produto)
# Z2[k] = sum_j A1 * 0.5 + 0.5 => Z2[k] = A1 * 0.5 * 10 + 0.5 = A1 * 5 + 0.5
Z2 := A1 * 5 + 0.5

# Ativação Sigmóide aproximada (como Z2 > 0, sigmoid(Z2) > 0.5)
# Então todos os produtos não comprados serão recomendados
# Vamos imprimir os produtos não comprados (X[i] = 0) como recomendação

print("Produtos recomendados para você:")

if X1 = 0 then print("Laptop")
if X2 = 0 then print("Tablet")
if X3 = 0 then print("Fones de ouvido")
if X4 = 0 then print("Camisa")
if X6 = 0 then print("Jaqueta")
if X7 = 0 then print("Sapatos")
if X8 = 0 then print("Geladeira")
if X10 = 0 then print("Máquina de lavar")
if X11 = 0 then print("Ar condicionado")
if X13 = 0 then print("Não-ficção")
if X14 = 0 then print("Ficção científica")
if X15 = 0 then print("Fantasia")

end
