import 'dart:io';

void main() {
  stdout.write("Digite seu peso em kg (ex: 75.5): ");
  var pesoInput = stdin.readLineSync();
  
  stdout.write("Digite sua altura em metros (ex: 1.75): ");
  var alturaInput = stdin.readLineSync();

  if (pesoInput == null || pesoInput.isEmpty || alturaInput == null || alturaInput.isEmpty) {
    print("Entrada inválida. Certifique-se de digitar peso e altura.");
    return;
  }
  
  try {
    double peso = double.parse(pesoInput);
    double altura = double.parse(alturaInput);
    
    if (altura <= 0 || peso <= 0) {
      print("Peso e altura devem ser valores positivos.");
      return;
    }

    // Cálculo do IMC: peso / (altura * altura)
    double imc = peso / (altura * altura);
    String classificacao;

    // **Estrutura de Decisão** (if/else if/else)
    if (imc < 18.5) {
      classificacao = "Abaixo do peso";
    } else if (imc >= 18.5 && imc <= 24.9) {
      classificacao = "Peso normal";
    } else if (imc >= 25.0 && imc <= 29.9) {
      classificacao = "Sobrepeso";
    } else if (imc >= 30.0 && imc <= 34.9) {
      classificacao = "Obesidade grau 1";
    } else if (imc >= 35.0 && imc <= 39.9) {
      classificacao = "Obesidade grau 2";
    } else { // IMC de 40.0 ou mais
      classificacao = "Obesidade grau 3";
    }
    
    print("\n--- Resultado do IMC ---");
    print("Seu IMC é: **${imc.toStringAsFixed(2)}**");
    print("Classificação: **$classificacao**");

  } catch (e) {
    print("Entrada inválida. Certifique-se de usar números (com ponto ou vírgula, dependendo da sua configuração, mas o Dart usa ponto por padrão).");
  }
}