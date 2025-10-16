void fazerLogin(
  String usuario,
  String senha,
  void Function() onSuccess,
  void Function() onError,
) {
  if (usuario == 'Admin' && senha == '1234') {
    onSuccess();
  } else {
    onError();
  }
}

void main() {}
