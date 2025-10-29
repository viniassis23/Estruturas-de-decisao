import 'dart:io';

void main() {
  stdout.write("Digite a primeira nota: ");
  var nota1Input = stdin.readLineSync();
  
  stdout.write("Digite a segunda nota: ");
  var nota2Input = stdin.readLineSync();

  if (nota1Input == null || nota1Input.isEmpty || nota2Input == null || nota2Input.isEmpty) {
    print("Entrada inválida. Digite as duas notas.");
    return;
  }
  
  try {
    double nota1 = double.parse(nota1Input);
    double nota2 = double.parse(nota2Input);

    // Cálculo da média
    double media = (nota1 + nota2) / 2;
    String situacao;

    // **Estrutura de Decisão** (if/else if/else)
    if (media >= 7.0) {
      situacao = "APROVADO";
    } else if (media >= 4.0) { // Média < 7.0 e >= 4.0
      situacao = "DE RECUPERAÇÃO";
    } else { // Média < 4.0
      situacao = "REPROVADO";
    }
    
    print("\n--- Situação do Aluno ---");
    print("Média Final: **${media.toStringAsFixed(2)}**");
    print("Situação: **$situacao**");

  } catch (e) {
    print("Entrada inválida. Certifique-se de usar números para as notas.");
  }
}