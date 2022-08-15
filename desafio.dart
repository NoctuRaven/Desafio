/** 

** ### Desafio ### **

Descrição:
- Implemente uma função que receba um número inteiro positivo e retorne o
  somatório de todos os valores inteiros divisíveis por 3 ou 5 que sejam inferiores ao
  número passado.

*/

import 'dart:io';

main() {
  bool start = true;
  int number = 0;
  while (start) {
    print('\nDigite um número');
    try {
      number = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\número inválido,tente novamente!\nErro => $e\n\n');
      return;
    }
    List<int>? dividerList = [];
    for (int i = 1; i < number; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        dividerList.add(i);
      }
    }
    if (dividerList.isEmpty) {
      print('\nNão foram encontrados divisores de 3 ou 5 no intervalo apresentado');
    } else {
      int acc = 0;
      for (var n in dividerList) {
        acc += n;
      }
      print('\nA soma dos valores encontrados é:$acc');
    }
    print('\nDeseja tentar mais uma vez ? Digite [S] para sim e [N] para não!');
    String answer = stdin.readLineSync()!.toLowerCase();
    switch (answer) {
      case 's':
        print('\nReiniciando...\n\n');
        break;
      case 'n':
        start = false;
        print('\nEncerrando... \n\n');
        break;
      default:
        start = false;
        print('\nA resposta foi diferente do esperado, portanto a execução será encerrada...\n\n');
    }
  }
}
