import 'dart:io';

List < Map < String, dynamic > > cadastros = [];
main (){

 bool condicao = true;
 print('\x1B[2J\x1b[0;0H'); 
 while (condicao){
   print('digite um comando');
   String comando = stdin.readLineSync().toString();
   if (comando == 'sair'){
     print('Programa finalizado');
     condicao = false;
    } else if (comando == 'cadastro'){
      print('\x1B[2J\x1b[0;0H'); 
     cadastrar(cadastros);
    } else if (comando  == 'imprimir'){
      print(cadastros);
    } else {
      print('Esse comando não existe');
    }
  }
}
 cadastrar(cadastro){
 Map <String, dynamic> cadastro = {}; 
 
  print('Digite seu nome: ');
 cadastro ['nome'] =  stdin.readLineSync().toString();

 print('Digite sua idade: ');
 cadastro ['idade'] =  stdin.readLineSync().toString();

 print('Digite sua cidade: ');
 cadastro ['cidade'] =  stdin.readLineSync().toString();

 print('Digite seu estado: ');
 cadastro ['estado'] =  stdin.readLineSync().toString();

 cadastros.add(cadastro);
}
