import 'dart:io';

void main() {
  // Solicita nome de usuário
  stdout.write("Digite o nome de usuário: ");
  String? usuario = stdin.readLineSync();
  
  // Solicita a senha
  stdout.write("Digite a senha: ");
  String? senha = stdin.readLineSync();

  // Define as credenciais corretas
  const String usuarioCorreto = "admin";
  const String senhaCorreta = "1234";

  // **Estrutura de Decisão** (if/else com operador lógico AND `&&`)
  if (usuario == usuarioCorreto && senha == senhaCorreta) {
    print("\n**ACESSO CONCEDIDO!** Bem-vindo(a), $usuarioCorreto.");
  } else {
    print("\n**ACESSO NEGADO.** Nome de usuário ou senha incorretos.");
  }
}