import 'dart:io';
import 'dart:async';
import 'dart:convert';

void main (){

  print("Tamaño de la base del Rectangulo: ");
  double base = double.parse(stdin.readLineSync());
  print("Tamaño de la altura del Rectangulo: ");
  double altura = double.parse(stdin.readLineSync());
  double resultado = (base*altura);
  double formula = resultado/30;
  print("caben ${formula} pokemones en el rectangulo");

}