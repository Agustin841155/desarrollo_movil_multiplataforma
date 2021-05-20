import 'dart:io';
import 'dart:async';
import 'dart:convert';

void main (){

  print("Ingresa cuantos años tiene tu perro: ");
  double edad = double.parse(stdin.readLineSync());
  double resultado = (edad*7);
  print("Tu perro tiene la edad de ${resultado} en años humanos");

}