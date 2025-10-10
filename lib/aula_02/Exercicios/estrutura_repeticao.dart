double truncateTo2Decimals(double value) {
  return (value * 100).truncateToDouble() / 100;
}

double calculaMediaNotas(List<double> notas) {
  double somaNotas = 0;

  for (var nota in notas) {
    somaNotas += nota;
  }

  return somaNotas / notas.length;
}

void main() {
  List<double> notas = [10, 9, 8.5];
  double mediaNotas = truncateTo2Decimals(calculaMediaNotas(notas));
  print(mediaNotas);

  if (mediaNotas >= 7) {
    print('Aprovado');
  } else {
    print('Reprovado');
  }
}
