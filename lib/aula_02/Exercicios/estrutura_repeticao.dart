double truncateTo2Decimals(double value) {
  return (value * 100).truncateToDouble() / 100;
}

double calculaMediaNotas(List<double> notas) {
  double somaNotas = 0;

  for (double nota in notas) {
    somaNotas += nota;
  }

  return truncateTo2Decimals(somaNotas / notas.length);
}

String alunoAprovado(double nota) {
  return nota >= 7 ? 'Aprovado' : 'Reprovador';
}

void main() {
  List<double> notas = [10, 9, 8.5];
  double mediaNotas = calculaMediaNotas(notas);
  print(mediaNotas);

  print(alunoAprovado(mediaNotas));
}
