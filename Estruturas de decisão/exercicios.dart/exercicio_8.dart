import 'dart:io';

void main() {
  // Função para ler um lado e garantir que é um double positivo
  double lerLado(String nomeLado) {
    double? lado;
    while (lado == null || lado <= 0) {
      stdout.write("Digite o valor do $nomeLado: ");
      var input = stdin.readLineSync();
      try {
        lado = double.parse(input ?? "0");
        if (lado <= 0) {
          print("O lado deve ser um valor positivo.");
        }
      } catch (e) {
        print("Entrada inválida. Use um número.");
      }
    }
    return lado;
  }

  print("\n--- Classificador de Triângulos ---");
  double ladoA = lerLado("primeiro lado (A)");
  double ladoB = lerLado("segundo lado (B)");
  double ladoC = lerLado("terceiro lado (C)");

  // Condição de existência de um triângulo: A soma de dois lados deve ser maior que o terceiro.
  // **Estrutura de Decisão** (if para existência, else if/else para classificação)
  if (ladoA + ladoB > ladoC && ladoA + ladoC > ladoB && ladoB + ladoC > ladoA) {
    print("\nOs lados $ladoA, $ladoB e $ladoC formam um triângulo.");

    // Classificação
    if (ladoA == ladoB && ladoB == ladoC) {
      print("Classificação: **Equilátero** (Todos os lados iguais)");
    } else if (ladoA == ladoB || ladoA == ladoC || ladoB == ladoC) {
      print("Classificação: **Isósceles** (Dois lados iguais)");
    } else {
      print("Classificação: **Escaleno** (Todos os lados diferentes)");
    }
  } else {
    print("\n**ERRO:** Os lados $ladoA, $ladoB e $ladoC NÃO formam um triângulo. A soma de dois lados deve ser maior que o terceiro.");
  }
}