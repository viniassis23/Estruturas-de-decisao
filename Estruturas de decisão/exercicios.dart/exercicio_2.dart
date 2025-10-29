import 'dart:io';

void main() {
  // Solicita o valor da compra
  stdout.write("Digite o valor total da compra (R\$): ");
  var input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("Valor de compra inválido.");
    return;
  }
  
  try {
    double valorOriginal = double.parse(input);
    double valorFinal;
    
    // **Estrutura de Decisão** (if/else)
    if (valorOriginal > 100.00) {
      // Aplica 10% de desconto
      double desconto = valorOriginal * 0.10;
      valorFinal = valorOriginal - desconto;
      
      print("\nParabéns! Você ganhou um desconto de 10%!");
      print("Valor original: R\$ ${valorOriginal.toStringAsFixed(2)}");
      print("Valor do desconto: R\$ ${desconto.toStringAsFixed(2)}");
      print("**Valor final a pagar: R\$ ${valorFinal.toStringAsFixed(2)}**");
      
    } else {
      valorFinal = valorOriginal;
      print("\nO valor da sua compra é R\$ ${valorOriginal.toStringAsFixed(2)}.");
      print("O valor final a pagar é R\$ ${valorFinal.toStringAsFixed(2)}.");
      print("Para ganhar 10% de desconto, o valor da compra deve ser acima de R\$ 100,00.");
    }
  } catch (e) {
    print("Entrada inválida. Por favor, digite um valor numérico para a compra.");
  }
}