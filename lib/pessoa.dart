class Pessoa {
  final String nome;
  final double peso;
  final double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularIMC() {
    if (peso <= 0 || altura <= 0) {
      throw Exception('Peso e altura devem ser valores positivos.');
    }
    return peso / (altura * altura);
  }

  String classificarIMC(double imc) {
    if (imc < 16) return 'Magreza grave';
    if (imc >= 16 && imc < 17) return 'Magreza moderada';
    if (imc >= 17 && imc < 18.5) return 'Magreza leve';
    if (imc >= 18.5 && imc < 25) return 'Saudável';
    if (imc >= 25 && imc < 30) return 'Sobrepeso';
    if (imc >= 30 && imc < 35) return 'Obesidade Grau I';
    if (imc >= 35 && imc < 40) return 'Obesidade Grau II (severa)';
    return 'Obesidade Grau III (mórbida)';
  }
}
