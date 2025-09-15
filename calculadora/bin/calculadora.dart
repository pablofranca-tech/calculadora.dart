import 'dart:io';

void main() {
  int numeroUm = 0;
  int numeroDois = 0;
  String operacao = "";
  String resultado = "";
  List<String> operacoes = <String>["+", "-", "/", "*"];

  void soma() {
    resultado = (numeroUm + numeroDois).toString();
  }

  void subtracao() {
    resultado = (numeroUm - numeroDois).toString();
  }

  void divisao() {
    if (numeroDois == 0) {
      resultado = "Erro: divisão por zero";
    } else {
      resultado = (numeroUm / numeroDois).toString();
    }
  }

  void multiplicacao() {
    resultado = (numeroUm * numeroDois).toString();
  }

  void calcular() {
    switch (operacao) {
      case "+":
        soma();
        break;
      case "-":
        subtracao();
        break;
      case "/":
        divisao();
        break;
      case "*":
        multiplicacao();
        break;
      default:
        resultado = "Operação inválida";
    }
  }

  void getOperacao() {
    print("Digite a operação (+, -, /, *):");
    String? entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada;
      } else {
        print("Operação inválida");
        getOperacao();
      }
    }
  }

  print("Digite o primeiro número:");
  String? entrada = stdin.readLineSync();
  if (entrada != null && entrada != "") {
    numeroUm = int.parse(entrada);
  }

  getOperacao();

  print("Digite o segundo número:");
  entrada = stdin.readLineSync();
  if (entrada != null && entrada != "") {
    numeroDois = int.parse(entrada);
  }

  calcular();
  print("Resultado: $resultado");
}

// int = numeros inteiros 1, 2, 3...
// double = numeros com casas decimais 1.0, 2.5, 3.14...
// String = textos "Olá", "Mundo"
// bool = true ou false
// runes = caracteres especiais "😀", "🐍"
// dynamic = qualquer tipo de dado
// var = o Dart identifica o tipo de dado automaticamente
// const = constante, valor fixo
// final = valor fixo, mas pode ser atribuido em tempo de execução
// print() = imprime na tela
// stdin.readLineSync() = lê uma linha do terminal
// int.parse() = converte uma String em int
// double.parse() = converte uma String em double
// toString() = converte um int ou double em String
// operadores aritméticos: +, -, *, /, % (resto da divisão)
// operadores relacionais: ==, !=, >, <, >=, <=
// operadores lógicos: && (e), || (ou), ! (não)
// estruturas condicionais: if, else if, else, switch
// estruturas de repetição: for, while, do while, for in
// listas: List<tipo> nome = [valores];
