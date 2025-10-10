void main() {
  String name = 'Marcelo';
  String lastName = "Oliveira";
  String fullName = '''  $name $lastName  
  Alguma coisa
  
  ''';

  double peso = 120.25;
  String dados = ''' 
  Nome: $name 
  Sobrenome: $lastName
  Peso: ${peso.toStringAsPrecision(2)}

  ''';

  int idade = 30;
  String sexo = 'F';
  Map<String, int> pessoas = {'Marcelo': 55};
  pessoas.addAll({'Paulo': 27});

  pessoas.forEach((key, value) {
    print('Nome: $key, idade : $value');
  });

  pessoas.values.forEach(print);

  pessoas.values.forEach(print);

  for (int idade in pessoas.values) {
    print('Idade : $idade');
  }

  final idades = pessoas.values.toList();

  for (int i = 0; i < idades.length; i++) {
    print(idades[i]);
  }

  print(pessoas['Marcelo']);

  if (idade >= 18) {
    print('Maior de idade');
  } else {
    print('Menor de idade');
  }

  if (idade >= 18 && sexo == 'M') {
    print('Apto');
  } else {
    print('Não apto');
  }

  print(idade);

  print(fullName);
  print(name);
  print(lastName);
  print(dados);
}
