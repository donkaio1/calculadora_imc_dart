class NomeInvalidoException implements Exception {
  String error() => 'Digite um nome, não deixe este campo nulo';

  @override
  String toString() {
    return error();
  }
}

class NomeNumeroException implements Exception {
  String error() => 'Antes de digitar um numero digite o Nome';

  @override
  String toString() {
    return error();
  }
}
