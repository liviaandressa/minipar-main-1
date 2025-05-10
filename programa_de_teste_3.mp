program NeuronioSimples

# Inicialização das variáveis
input_val := 1
output_desire := 0
input_weight := 0.5
learning_rate := 0.01
error := 1000.0
iteration := 0
bias := 1
bias_weight := 0.5

print("Entrada: ", input_val, " Desejado: ", output_desire)

# Loop de treinamento
WHILE error != 0 DO
  iteration := iteration + 1
  print("#### Iteração: ", iteration)
  print("Peso: ", input_weight)

  sum_val := (input_val * input_weight) + (bias * bias_weight)

  # Função de ativação
  IF sum_val >= 0 THEN
    output := 1
  ELSE
    output := 0
  END

  print("Saída: ", output)

  error := output_desire - output
  print("Erro: ", error)

  IF error != 0 THEN
    input_weight := input_weight + (learning_rate * input_val * error)
    print("Peso do bias: ", bias_weight)
    bias_weight := bias_weight + (learning_rate * bias * error)
  END
END

print("Parabéns!!! A Rede de um Neurônio Aprendeu")
print("Valor desejado: ", output_desire)

end
