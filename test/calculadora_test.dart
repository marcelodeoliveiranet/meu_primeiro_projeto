import 'package:meu_primeiro_projeto/calculadora.dart';
import 'package:test/test.dart';

void main() {
  test('somar', () {
    expect(somar(12, 12), 24);
  });

  test('dividir', () {
    expect(dividir(4, 2), 2);
  });

  test('multiplicar', () {
    expect(multiplicar(4, 2), 8);
  });

  test('subtrair', () {
    expect(subtrair(4, 2), 2);
  });
}
