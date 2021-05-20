import 'dart:io';
import 'dart:async';
import 'dart:convert';

void main (){

  print("Calificacion obtenida en la Evaluacion 1: ");
  double evaluacion1 = double.parse(stdin.readLineSync());
  print("Calificacion obtenida en la Evaluacion 2: ");
  double evaluacion2 = double.parse(stdin.readLineSync());
  print("Calificacion obtenida en la Evaluacion 3: ");
  double evaluacion3 = double.parse(stdin.readLineSync());
  double nota1 = (evaluacion1*20)/100;
  double nota2 = (evaluacion2*30)/100;
  double nota3 = (evaluacion3*50)/100;
  double promedio = (nota1 + nota2 + nota3);
  print("El promedio alcanzado fue de: ${promedio}");
  
}