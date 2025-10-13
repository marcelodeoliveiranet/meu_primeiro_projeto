import 'package:meu_primeiro_projeto/calculadora.dart';

void main() async {
  executarOperacao(23, 12, dividir);
  executeCallback((status) {
    print(status);
  });

  processarPedido((status) {
    print(status);
  });

  await getNome().then((nome) {
    print(nome);
  });

  List<void Function()> callBacks = [];
  callBacks.add(() {
    print('Primeiro callback');
  });

  callBacks.add(() {
    print('Segundo callback');
  });

  for (var callBack in callBacks) {
    callBack();
  }
}

void executarOperacao(
  double num1,
  double num2,
  double Function(double num1, double num2) operacao,
) {
  double resultado = operacao(num1, num2);
  print(resultado);
}

Future<void> executeCallback(void Function(String) callback) async {
  callback('Executando');
  await Future.delayed(Duration(seconds: 3));
  callback('Finalizado');
}

enum StatusPedido { aberto, processando, finalizado, entregue }

Future<void> processarPedido(
  void Function(StatusPedido status) callback,
) async {
  callback(StatusPedido.aberto);
  await Future.delayed(Duration(seconds: 1));
  callback(StatusPedido.processando);
  await Future.delayed(Duration(seconds: 1));
  callback(StatusPedido.finalizado);
  await Future.delayed(Duration(seconds: 1));
  callback(StatusPedido.entregue);
}

Future<String> getNome() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Marcelo';
}
