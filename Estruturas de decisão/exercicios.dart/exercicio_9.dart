import 'dart:io';

void main() {
  stdout.write("Digite o salário mensal (R\$): ");
  var input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("Entrada inválida.");
    return;
  }
  
  try {
    double salario = double.parse(input);
    double imposto;
    double aliquota;

    // **Estrutura de Decisão** (if/else if/else)
    if (salario <= 1903.98) {
      imposto = 0.00;
      aliquota = 0.0;
    } else if (salario >= 1903.99 && salario <= 2826.65) {
      aliquota = 0.075; // 7.5%
      imposto = salario * aliquota;
    } else if (salario >= 2826.66 && salario <= 3751.05) {
      aliquota = 0.15; // 15%
      imposto = salario * aliquota;
    } else if (salario >= 3751.06 && salario <= 4664.68) {
      aliquota = 0.225; // 22.5%
      imposto = salario * aliquota;
    } else { // Acima de R$ 4.664,68
      aliquota = 0.275; // 27.5%
      imposto = salario * aliquota;
    }
    
    print("\n--- Cálculo do Imposto de Renda ---");
    print("Salário Mensal: R\$ ${salario.toStringAsFixed(2)}");
    if (imposto == 0.00) {
      print("**Situação: Isento**");
    } else {
      print("Alíquota aplicada: **${(aliquota * 100).toStringAsFixed(1)}%**");
      print("Valor do Imposto a Pagar: **R\$ ${imposto.toStringAsFixed(2)}**");
    }

  } catch (e) {
    print("Entrada inválida. Por favor, use um número para o salário.");
  }
}