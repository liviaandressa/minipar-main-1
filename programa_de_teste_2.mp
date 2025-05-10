program Teste2
PAR
  # Cálculo do Fatorial de um número (executado em paralelo - Thread 1)
  num_fat := 5
  fat := 1
  i := 1
  WHILE i <= num_fat DO
    fat := fat * i
    i := i + 1
  END
  print("Fatorial de ", num_fat, " é ", fat)

  # Cálculo da Série de Fibonacci (executado em paralelo - Thread 2)
  n_fib := 7
  a := 0
  b := 1
  i := 1
  print("Série de Fibonacci até ", n_fib, " termos:")
  print(a)
  print(b)
  WHILE i <= n_fib - 2 DO
    fib := a + b
    print(fib)
    a := b
    b := fib
    i := i + 1
  END
END
