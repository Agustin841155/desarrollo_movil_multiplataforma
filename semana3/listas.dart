import 'dart:io';
import 'dart:convert';
import 'dart:async';
void main(){
  List <dynamic> datos = [];
  final objeto = new Sensores();  
  stdout.write("¿Cuantos registros quieres realizar?: ");
  var intentos = int.parse(stdin.readLineSync());
  objeto.insertar(datos,intentos);
  objeto.imprimir(datos);
}
class Sensores{
  void insertar(datos, intentos){
    int laps = 0;
    while (laps < intentos)
    {
      Map <dynamic, dynamic> map = { "Id_Sensor" : null , "Valor":null , "Fecha" : null };
      print("\n");
      stdout.write("Id del Sensor: ");
      String id = stdin.readLineSync();
      stdout.write("Valor: ");
      String valor = stdin.readLineSync();
      stdout.write("fecha de registro: ");
      String fecha = stdin.readLineSync();
      laps++;
      map["Id_Sensor"] = id;
      map["Valor"] = valor;
      map["Fecha"] = fecha;
      datos.add(map);
    }
    } 
    void imprimir(List <dynamic> datos){
     for(var resultado in datos){
      print("\ndatos almacenados:\n$resultado\n");
     }
  } 
}