class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;
  double? _imc;
  String? _tipo;

  void setNome(String nome) => _nome = nome;
  String? getNome() => _nome ?? '';

  void setPeso(double peso) => _peso = peso;
  double? getPeso() => _peso ?? 0;

  void setAltura(double altura) => _altura = altura;
  double? getAltura() => _altura ?? 0;

  void setImc(double imc) => _imc = imc;
  double? getImc() => _imc ?? 0;

  Pessoa(String nome, double peso, double altura, double imc, String tipo) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
    _imc = imc;
    _tipo = tipo;
  }

  @override
  String toString() {
    return {
      'Nome': _nome,
      'Peso': _peso,
      'Altura': _altura,
      'IMC': '${_imc!.toStringAsFixed(2)} kg/m²',
      'Tipo': _tipo
    }.toString();
  }
}
