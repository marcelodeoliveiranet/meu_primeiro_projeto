double truncateTo2Decimals(double value) {
  return (value * 100).truncateToDouble() / 100;
}

double calculaMediaNotas(List<double> notas) {
  double somaNotas = 0;
  double mediaNotas = 0;

  for (var nota in notas) {
    somaNotas += nota;
  }

  mediaNotas = somaNotas / notas.length;
  return mediaNotas;
}

void main() {
  List<double> notas = [10, 9, 8.5];
  double mediaNota = truncateTo2Decimals(calculaMediaNotas(notas));
  print(mediaNota);

  if (mediaNota >= 7) {
    print('Aprovado');
  } else {
    print('Reprovado');
  }
}
