void verificarNumero(int num1, void Function() onEven, void Function() onOdd) {
  if (num1 % 2 == 0) {
    onEven();
  } else {
    onOdd();
  }
}

void main() {
  verificarNumero(
    15,
    () => print("O número é par"),
    () => print("O número é impar"),
  );
}
