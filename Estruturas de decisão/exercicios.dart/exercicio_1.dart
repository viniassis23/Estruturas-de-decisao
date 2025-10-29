import 'dart:io';

void main() {
  // Solicita a idade do usuário
  stdout.write("Por favor, digite sua idade: ");
  // Lendo a entrada do usuário e garantindo que é um inteiro
  var input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) {
    print("Idade inválida. Por favor, tente novamente.");
    return;
  }
  
  try {
    int idade = int.parse(input);
    
    // **Estrutura de Decisão** (if/else)
    if (idade >= 16) {
      print("Você tem $idade anos. **Você está apto(a) a votar este ano!**");
    } else {
      print("Você tem $idade anos. **Você NÃO está apto(a) a votar este ano.** A idade mínima é 16.");
    }
  } catch (e) {
    print("Entrada inválida. Por favor, digite um número inteiro para a idade.");
  }
}