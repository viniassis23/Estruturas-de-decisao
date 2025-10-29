import 'dart:io';

void main() {
  // Saldo inicial
  double saldo = 1000.00;

  print("\n--- Caixa Eletrônico ---");
  print("1. Saldo");
  print("2. Saque");
  print("3. Depósito");
  print("-------------------------");
  
  stdout.write("Escolha uma operação (1 a 3): ");
  var input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("Opção inválida.");
    return;
  }
  
  try {
    int operacao = int.parse(input);

    // **Estrutura de Decisão** (switch case com if/else interno)
    switch (operacao) {
      case 1:
        print("\n**Operação: Saldo**");
        print("Seu saldo atual é: **R\$ ${saldo.toStringAsFixed(2)}**");
        break;
        
      case 2:
        print("\n**Operação: Saque**");
        stdout.write("Digite o valor que deseja sacar: R\$ ");
        var saqueInput = stdin.readLineSync();
        double valorSaque = double.parse(saqueInput ?? "0");
        
        if (valorSaque > 0) {
          if (valorSaque <= saldo) {
            saldo -= valorSaque;
            print("Saque de R\$ ${valorSaque.toStringAsFixed(2)} realizado com sucesso!");
            print("Seu novo saldo é: **R\$ ${saldo.toStringAsFixed(2)}**");
          } else {
            print("ERRO: Saldo insuficiente. Saldo atual: R\$ ${saldo.toStringAsFixed(2)}");
          }
        } else {
          print("Valor de saque inválido.");
        }
        break;
        
      case 3:
        print("\n**Operação: Depósito**");
        stdout.write("Digite o valor que deseja depositar: R\$ ");
        var depositoInput = stdin.readLineSync();
        double valorDeposito = double.parse(depositoInput ?? "0");

        if (valorDeposito > 0) {
          saldo += valorDeposito;
          print("Depósito de R\$ ${valorDeposito.toStringAsFixed(2)} realizado com sucesso!");
          print("Seu novo saldo é: **R\$ ${saldo.toStringAsFixed(2)}**");
        } else {
          print("Valor de depósito inválido.");
        }
        break;
        
      default:
        print("\nOpção inválida. Por favor, escolha 1, 2 ou 3.");
    }

  } catch (e) {
    print("Entrada inválida. Por favor, digite um número para a operação e valores numéricos para as transações.");
  }
}