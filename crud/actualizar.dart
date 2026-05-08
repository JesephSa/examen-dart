//actualizar
import 'dart:io';
import '../main.dart';
import '../Crud/crear.dart';
import '../Crud/listar.dart';
import '../Crud/actualizar.dart';
import '../Crud/eliminar.dart';

List<Map<String, dynamic>> productos = [];

void actualizar() {

  print("actualizar producto");
  print("ingrese el numero del producto a actualizar;");
  int numProducto = int.parse(stdin.readLineSync()!);

  if (numProducto > 0 ) {
    
    print("ingrese el nuevo nombre del producto:");
    String nuevoNombre = stdin.readLineSync()!;
    productos[numProducto - 1]['nombre'] = nuevoNombre;

    print("ingrese el nuevo precio del producto:");
    double nuevoPrecio = double.parse(stdin.readLineSync()!);
    productos[numProducto - 1]['precio'] = nuevoPrecio;

    print("ingrese la nueva cantidad del producto:");
    int nuevaCantidad = int.parse(stdin.readLineSync()!);
    productos[numProducto - 1]['cantidad'] = nuevaCantidad;

  } else {
    print("numero de producto no valido");
  }

}