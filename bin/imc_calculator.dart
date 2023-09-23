import 'dart:io';
import '../lib/pessoa.dart';

void main() {
  try {
    print('Digite seu nome: ');
    String nome = stdin.readLineSync() ?? '';

    print('Digite seu peso em quilos: ');
    double peso = double.parse(stdin.readLineSync() ?? '');

    print('Digite sua altura em metros: ');
    double altura = double.parse(stdin.readLineSync() ?? '');

    Pessoa pessoa = Pessoa(nome, peso, altura);

    double imc = pessoa.calcularIMC();
    String classificacao = pessoa.classificarIMC(imc);

    print('Olá ${pessoa.nome}, seu IMC é: $imc e você está na categoria: $classificacao');

  } catch (e) {
    print('Ocorreu um erro: $e');
  }
}
