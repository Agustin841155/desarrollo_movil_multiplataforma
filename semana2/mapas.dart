import 'dart:io';
import 'dart:convert';
import 'dart:async';
void main(){
 Map <dynamic, dynamic> agenda = { "Nombre" : null , "Numero":null , "Correo" : null };
 while (true){
 print("\nMENU DE OPCIONES\n ");
 print("Opcion 1) Mostrar todos los datos");
 print("Opcion 2) Insertar un nuevo registro");
 print("Opcion 3) Modificar un registro");
 print("Opcion 4) Borrar un registro");
 print("Opcion 5) Cerrar menu");
 stdout.write("\nIngresa el numero de una opcion a ejecutar: ");
 int opcion = int.parse(stdin.readLineSync());
 if (opcion == 1){mostrar(agenda); }
 else if (opcion == 2){insertar(agenda);}
 else if (opcion == 3){modificar(agenda);}
 else if (opcion == 4){eliminar(agenda);}
 else if (opcion == 5){salir(agenda); break;}
 } 
}
void mostrar(agenda)
{
  print("\nRegistros: ");
  print(agenda);
}
void insertar(agenda)
{
 stdout.write("Ingresa el Nombre: ");
 String nombre = stdin.readLineSync();
 stdout.write("Ingresa el Numero de telefono: ");
 int numero = int.parse(stdin.readLineSync());
 stdout.write("Ingresa el correo: ");
 String correo = stdin.readLineSync();
 agenda["Nombre"] = nombre;
 agenda["Numero"] = numero;
 agenda["Correo"] = correo;
 print("${agenda} Registro insertado correctamente");
}

void modificar(agenda)
{
 print("Registros con los que se cuentan: ");
 print(agenda);
 stdout.write("Ingresa el nombre a modificar: ");
 String nombre = stdin.readLineSync();
 stdout.write("Ingresa el numero de telefono a modificar: ");
 int numumero = int.parse(stdin.readLineSync());
 stdout.write("Ingresea el correo a modificar:");
 String correo= stdin.readLineSync();
 stdout.write("Ingresa el nuevo nombre: ");
 String nuevonom = stdin.readLineSync();
 stdout.write("Ingresa el nuevo numero de telefono: ");
 int nuevonum = int.parse(stdin.readLineSync());
 stdout.write("Ingresa el nuevo correo: ");
 String nuevocorr = stdin.readLineSync();
 agenda["Nombre"] = nuevonom;
 agenda["Numero"] = nuevonum;
 agenda["Correo"] = nuevocorr;
 print("${agenda} Registro Actualizado correctamente");
}

void eliminar(agenda)
{
 print("Registros con los que se cuentan: ");
 print(agenda);
 stdout.write("Ingresa el nombre a eliminar: ");
 String name = stdin.readLineSync();
 stdout.write("Ingresa el numero a eliminar: ");
 int phone = int.parse(stdin.readLineSync());
 stdout.write("Ingresa el correo a eliminar: ");
 String emai = stdin.readLineSync();
 agenda["Nombre"] = null; 
 agenda["Numero"] = null;
 agenda["Correo"] = null;
 print("${agenda} Registro eliminado correctamente");
}

void salir(agenda)
{
  print("Adios que tengas un buen dia :)");
}