program RedeNeuralXOR

# Inicialização dos dados de entrada e saída
input1_0 := 0; input2_0 := 0; output_0 := 0
input1_1 := 0; input2_1 := 1; output_1 := 1
input1_2 := 1; input2_2 := 0; output_2 := 1
input1_3 := 1; input2_3 := 1; output_3 := 0

# Pesos entre entrada e camada oculta (3 neurônios ocultos)
w_ih_00 := 0.1; w_ih_01 := 0.2; w_ih_02 := 0.3
w_ih_10 := 0.4; w_ih_11 := 0.5; w_ih_12 := 0.6

# Biases da camada oculta
b_h0 := 0.1; b_h1 := 0.1; b_h2 := 0.1

# Pesos entre camada oculta e saída
w_ho_0 := 0.1; w_ho_1 := 0.2; w_ho_2 := 0.3

# Bias da saída
b_o := 0.1

# Taxa de aprendizado
learning_rate := 0.2

# Número de épocas
epoch := 0
WHILE epoch < 20000 DO
  epoch := epoch + 1

  # LOOP pelos 4 padrões de entrada (apenas o primeiro mostrado abaixo para exemplo)
  x1 := input1_0
  x2 := input2_0
  y := output_0

  # Feedforward - camada oculta
  sum_h0 := (x1 * w_ih_00) + (x2 * w_ih_10) + b_h0
  sum_h1 := (x1 * w_ih_01) + (x2 * w_ih_11) + b_h1
  sum_h2 := (x1 * w_ih_02) + (x2 * w_ih_12) + b_h2

  # Sigmóide (simplificado como função linear + limiar para didática MiniPar)
  h0 := sigmoid(sum_h0)
  h1 := sigmoid(sum_h1)
  h2 := sigmoid(sum_h2)

  # Feedforward - saída
  sum_o := (h0 * w_ho_0) + (h1 * w_ho_1) + (h2 * w_ho_2) + b_o
  output := sigmoid(sum_o)

  # Erro
  erro := y - output

  # Backpropagation (simplificado)
  deriv_output := output * (1 - output)
  delta_o := erro * deriv_output

  delta_h0 := delta_o * w_ho_0 * h0 * (1 - h0)
  delta_h1 := delta_o * w_ho_1 * h1 * (1 - h1)
  delta_h2 := delta_o * w_ho_2 * h2 * (1 - h2)

  # Atualização dos pesos e bias da saída
  w_ho_0 := w_ho_0 + (learning_rate * delta_o * h0)
  w_ho_1 := w_ho_1 + (learning_rate * delta_o * h1)
  w_ho_2 := w_ho_2 + (learning_rate * delta_o * h2)
  b_o := b_o + (learning_rate * delta_o)

  # Atualização dos pesos e bias da camada oculta
  w_ih_00 := w_ih_00 + (learning_rate * delta_h0 * x1)
  w_ih_10 := w_ih_10 + (learning_rate * delta_h0 * x2)
  b_h0 := b_h0 + (learning_rate * delta_h0)

  w_ih_01 := w_ih_01 + (learning_rate * delta_h1 * x1)
  w_ih_11 := w_ih_11 + (learning_rate * delta_h1 * x2)
  b_h1 := b_h1 + (learning_rate * delta_h1)

  w_ih_02 := w_ih_02 + (learning_rate * delta_h2 * x1)
  w_ih_12 := w_ih_12 + (learning_rate * delta_h2 * x2)
  b_h2 := b_h2 + (learning_rate * delta_h2)

END

# Testes após treinamento (exemplo com input [0, 0])
x1 := 0
x2 := 0
sum_h0 := (x1 * w_ih_00) + (x2 * w_ih_10) + b_h0
sum_h1 := (x1 * w_ih_01) + (x2 * w_ih_11) + b_h1
sum_h2 := (x1 * w_ih_02) + (x2 * w_ih_12) + b_h2

h0 := sigmoid(sum_h0)
h1 := sigmoid(sum_h1)
h2 := sigmoid(sum_h2)

sum_o := (h0 * w_ho_0) + (h1 * w_ho_1) + (h2 * w_ho_2) + b_o
output := sigmoid(sum_o)

print("Input: 0 0 - Predicted Output: ", output)

# Repetir para [0,1], [1,0] e [1,1] com inputs correspondentes

end
