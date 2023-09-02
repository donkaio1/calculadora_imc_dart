import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc_dart/exception/nome_invalido_exception.dart';
import 'package:calculadora_imc_dart/calculadora_imc_dart.dart' as imc;

String obterNome() {
  String? nome;
  while (true) {
    print('Olá! Informe seu nome:');
    nome = stdin.readLineSync(encoding: utf8)?.trim();

    if (nome == null || nome.isEmpty) {
      print('Nome inválido. Por favor, insira um nome válido.');
    } else if (nome.contains(RegExp(r'[0-9]'))) {
      print('Nome não pode conter números. Por favor, insira um nome válido.');
    } else {
      break; // Precisa ser digitado um nome válido para sair do loop.
    }
  }
  return nome;
}

void main(List<String> arguments) {
  print('Calculadora IMC ~ Bootcamp Santander DIO');
  String nome;

  try {
    nome = obterNome();
  } catch (e) {
    if (e is NomeInvalidoException) {
      print('Nome inválido. Por favor, insira um nome válido.');
    } else if (e is NomeNumeroException) {
      print('Nome não pode conter números. Por favor, insira um nome válido.');
    }
    return;
  }

  print('Informe o peso em kg (Ex.: 72.5)');
  double? peso = double.tryParse(stdin.readLineSync(encoding: utf8) ?? '');
  if (peso == null) {
    print('Digite um valor. Ex: 80 ou 95.8');
    exit(0);
  }

  print('Informe a altura em metros (Ex.: 1.83)');
  double? altura = double.tryParse(stdin.readLineSync(encoding: utf8) ?? '');
  if (altura == null) {
    print('Digite um valor. Ex: 1.55 ou 1.7');
    exit(0);
  }

  double imcCalc() => peso / (altura * altura);

  imc.data(nome, peso, altura, imcCalc());
}
