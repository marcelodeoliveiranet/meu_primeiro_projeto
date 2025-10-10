double truncateTo2Decimals(double value) {
  return (value * 100).truncateToDouble() / 100;
}

void main() {
  List<double> notas = [10, 9, 8.5];
  double somaNotas = 0;
  double mediaNotas = 0;

  for (var nota in notas) {
    somaNotas += nota;
  }

  mediaNotas = somaNotas / notas.length;
  print(truncateTo2Decimals(mediaNotas));
}
