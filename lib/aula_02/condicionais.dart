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

  int idade = 55;

  if (idade >= 18) {
    print('Maior de idade');
  } else {
    print('Menor de idade');
  }

  print(idade);

  print(fullName);
  print(name);
  print(lastName);
  print(dados);
}
