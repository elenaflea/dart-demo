import 'dart:io';

import 'package:untitled/user.dart';

void main() {
  final jeanmichel = "JeanMichel";
  int countCaracters = jeanmichel.length;
  print("La chaine $jeanmichel à $countCaracters caracteres");

  print("Donne moi le nombre de pieds sous une table");
  var nbPiedSoustable = stdin.readLineSync();
  var total  = int.tryParse(nbPiedSoustable ?? "");
  //si total est different de null
  total?.ceil();

  if(total !=null) {
    total!.isOdd;
  }

  print("Votre table a donc  $nbPiedSoustable pieds");

  double prix = 149.9;
  int qty = 84;
  print("prix ${prix*qty}");


  int nbCharDans (String chaine) => chaine.length;

  print(linkArrayWith([15,22,56,789,125,45,4], delimiter: ":"));

  //[] param positioné
  // {} param nommé



  print(linkArrayWith2([15,22,56,789,125,45,4],"***"));

  List<Object> fff = [1,5,9,8,7,6];



  var jeanMichel = User(id:10, name:"Dupont", surname: "JeanMichel");

  jeanMichel.connect2().then((valeur){
    print("Connecté");
  });
}

// {} param nommé
String linkArrayWith (List<int> array, {delimiter = "  "}) {
  var string ="";
  array.forEach((entier) {
    string += entier.toString() + delimiter;
  });
  return string;
}

//[] param positioné
String linkArrayWith2 (List<int> array, [delimiter = "  "]) {
  var string ="";
  array.forEach((entier) {
    string += entier.toString() + delimiter;
  });
  return string;
}