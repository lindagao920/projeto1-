#!/bin/bash

# Exibe um menu de operações
echo "Escolha a operação:"
echo "1. Soma"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"

# Lê a escolha do usuário
read -p "Digite o número da operação (1/2/3/4): " operacao

# Lê os dois números
read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

# Realiza a operação selecionada
case $operacao in
  1) resultado=$(echo "$num1 + $num2" | bc);;
  2) resultado=$(echo "$num1 - $num2" | bc);;
  3) resultado=$(echo "$num1 * $num2" | bc);;
  4) 
     if [ $num2 -eq 0 ]; then
       resultado="Erro: Divisão por zero!"
     else
       resultado=$(echo "scale=2; $num1 / $num2" | bc);
     fi
     ;;
  *)
    resultado="Operação inválida!"
    ;;
esac

# Exibe o resultado
echo "Resultado: $resultado"

