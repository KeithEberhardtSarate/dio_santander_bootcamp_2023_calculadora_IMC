import 'package:test/test.dart';
import '../lib/pessoa.dart';

void main() {
  test('Cálculo de IMC com valores normais', () {
    Pessoa pessoa = Pessoa('Maria', 70, 1.75);
    double imc = pessoa.calcularIMC();
    expect(imc, closeTo(22.86, 0.01));
  });

  test('Classificação de IMC', () {
    Pessoa pessoa = Pessoa('Joao', 70, 1.75);
    expect(pessoa.classificarIMC(15), 'Magreza grave');
    expect(pessoa.classificarIMC(16.5), 'Magreza moderada');
    expect(pessoa.classificarIMC(18), 'Magreza leve');
    expect(pessoa.classificarIMC(22), 'Saudável');
    expect(pessoa.classificarIMC(27), 'Sobrepeso');
    expect(pessoa.classificarIMC(32), 'Obesidade Grau I');
    expect(pessoa.classificarIMC(37), 'Obesidade Grau II (severa)');
    expect(pessoa.classificarIMC(45), 'Obesidade Grau III (mórbida)');
  });

  test('Cálculo de IMC com peso negativo deve lançar exceção', () {
    expect(() => Pessoa('Fulano', -70, 1.75).calcularIMC(), throwsException);
  });

  test('Cálculo de IMC com altura negativa deve lançar exceção', () {
    expect(() => Pessoa('Ciclano', 70, -1.75).calcularIMC(), throwsException);
  });
}
