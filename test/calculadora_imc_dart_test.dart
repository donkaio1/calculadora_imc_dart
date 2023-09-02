import 'package:calculadora_imc_dart/calculadora_imc_dart.dart' as app;
import 'package:test/test.dart';

class MockUserInput {
  String obterNome() {
    return 'TesteNome'; // Valor fictício para o nome
  }

  double obterPeso() {
    return 70.0; // Valor fictício para o peso
  }

  double obterAltura() {
    return 1.75; // Valor fictício para a altura
  }
}

void main() {
  final userInput = MockUserInput();

  test('teste sem aguardar valor de retorno', () {
    // Utulizando métodos da classe MockUserInput para fornecer dados fictícios
    app.data(userInput.obterNome(), userInput.obterPeso(),
        userInput.obterAltura(), 24.49);
    // Neste teste, não estamos esperando um valor de retorno específico.
    // O objetivo é apenas testar se o código não gera exceções.
  });
}
