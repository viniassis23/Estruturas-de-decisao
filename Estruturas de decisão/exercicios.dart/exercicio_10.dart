import 'dart:io';
import 'dart:math';

void main() {
  // Gera um número secreto aleatório entre 1 e 100
  final random = Random();
  final int numeroSecreto = random.nextInt(100) + 1; // + 1 garante que o número é de 1 a 100
  int palpite = -1; // Inicializa com um valor fora do alcance
  int tentativas = 0;

  print("--- Jogo de Adivinhação ---");
  print("Tente adivinhar o número secreto entre 1 e 100!");

  // Loop principal do jogo
  while (palpite != numeroSecreto) {
    stdout.write("Digite seu palpite: ");
    var input = stdin.readLineSync();
    
    if (input == null || input.isEmpty) {
      print("Entrada inválida.");
      continue;
    }

    try {
      palpite = int.parse(input);
      tentativas++;
      
      if (palpite == numeroSecreto) {
        break; // Sai do loop se acertar
      }
      
      // **Operador Ternário** para exibir a dica
      String dica = palpite < numeroSecreto ? "**Muito baixo**" : "**Muito alto**";
      print(dica);
      
    } catch (e) {
      print("Entrada inválida. Por favor, digite um número inteiro.");
    }
  }

  // Mensagem de vitória
  print("\n*** PARABÉNS! ***");
  print("Você acertou! O número secreto era **$numeroSecreto**.");
  print("Você precisou de **$tentativas tentativas** para adivinhar.");
}