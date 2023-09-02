import 'package:calculadora_imc_dart/class/pessoa.dart';

dynamic data(String nome, double peso, double altura, double imcCalc) {
  switch (imcCalc) {
    case < 16:
      return print(Pessoa(nome, peso, altura, imcCalc, 'Magreza Grave'));
    case < 17:
      return print(Pessoa(nome, peso, altura, imcCalc, 'Magreza Moderada'));
    case 17 || < 18.5:
      return print(Pessoa(nome, peso, altura, imcCalc, 'Magreza Leve'));
    case 18.5 || < 25:
      return print(Pessoa(nome, peso, altura, imcCalc, 'Saudável').toString());
    case 25 || < 30:
      return print(Pessoa(nome, peso, altura, imcCalc, 'Sobrepeso'));
    case 30 || < 35:
      return print(Pessoa(nome, peso, altura, imcCalc, 'Obesidade Grau I'));
    case 35 || < 40:
      return print(
          Pessoa(nome, peso, altura, imcCalc, 'Obesidade Grau II (Severa)'));
    case >= 40:
      return print(
          Pessoa(nome, peso, altura, imcCalc, 'Obesidade Grau III (Mórbida)'));
    default:
      return 'Dados não compreendidos';
  }
}
