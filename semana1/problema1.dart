import 'dart:io';
import 'dart:async';
import 'dart:convert';

void main () {

  print("Ingresa el tamaño de la base del triangulo: ");
  double base = double.parse(stdin.readLineSync());
  print("Ingresa el tamaño de la altura del triangulo: ");
  double altura = double.parse(stdin.readLineSync());
  double resultado = (base*altura)/2;
  print("El area del triangulo es de: ${resultado}");

}