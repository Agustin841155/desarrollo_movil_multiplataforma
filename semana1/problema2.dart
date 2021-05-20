import 'dart:io';
import 'dart:convert';
import 'dart:async';

void main (){

  print("Ingresa el tamaño del lado 1: ");
  double lado1 = double.parse(stdin.readLineSync());
  print("Ingresa el tamaño del lado 2: ");
  double lado2 = double.parse(stdin.readLineSync());
  print("Ingresa el tamaño del lado 3: ");
  double lado3 = double.parse(stdin.readLineSync());
  print("Ingresa el tamaño del lado 4: ");
  double lado4 = double.parse(stdin.readLineSync());
  print("Ingresa el tamaño del lado 5: ");
  double lado5 = double.parse(stdin.readLineSync());
  print("Ingresa el tamaño del lado 6: ");
  double lado6 = double.parse(stdin.readLineSync());
  double resultado = (lado1+lado2+lado3+lado4+lado5+lado6);
  print("El perimetro del hexagono es de: ${resultado}");

}