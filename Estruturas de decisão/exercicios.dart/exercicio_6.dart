import 'dart:io';

void main() {
  // Exibe o menu
  print("\n--- Cardápio do Restaurante ---");
  print("1. Prato Feito (PF) - R\$ 25.00");
  print("2. Salada Completa - R\$ 22.50");
  print("3. Bife à Parmegiana - R\$ 35.00");
  print("4. Refrigerante + Batata Frita - R\$ 15.00");
  print("-------------------------------");
  
  stdout.write("Escolha uma opção (1 a 4): ");
  var input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("Opção inválida.");
    return;
  }
  
  try {
    int opcao = int.parse(input);
    String prato;
    double preco;

    // **Estrutura de Decisão** (switch case)
    switch (opcao) {
      case 1:
        prato = "Prato Feito (PF)";
        preco = 25.00;
        break;
      case 2:
        prato = "Salada Completa";
        preco = 22.50;
        break;
      case 3:
        prato = "Bife à Parmegiana";
        preco = 35.00;
        break;
      case 4:
        prato = "Refrigerante + Batata Frita";
        preco = 15.00;
        break;
      default:
        prato = "Opção inválida";
        preco = 0.00;
    }

    print("\n--- Seu Pedido ---");
    if (preco > 0) {
      print("Você escolheu: **$prato**");
      print("Valor a ser pago: **R\$ ${preco.toStringAsFixed(2)}**");
    } else {
      print("**$prato**");
    }

  } catch (e) {
    print("Entrada inválida. Por favor, digite um número de 1 a 4.");
  }
}