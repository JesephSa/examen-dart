
import 'dart:io';
import '../main.dart'; 
import '../crud/listar.dart';  
import '../crud/actualizar.dart';
import '../crear.dart';

List<Map<String, dynamic>> productos = [];

// FUNCIÓN ELIMINAR PRODUCTO
void eliminarProducto() {

  if (productos.isEmpty) {

    print("No hay productos para eliminar");

  } else {

    print("\n===== LISTA DE PRODUCTOS =====");

    for (int i = 0; i < productos.length; i++) {

      print("${i + 1}. ${productos[i]}");

    }

    print("\nIngrese el número del producto que desea eliminar:");

    int indice = int.parse(stdin.readLineSync()!) - 1;

    if (indice >= 0 && indice < productos.length) {

      print("Producto eliminado: ${productos[indice]}");

      productos .removeAt(indice);

    } else {

      print("Número inválido");

    }

  }

}

// FUNCIÓN SALIR
void salirPrograma() {

  print("Gracias por usar el sistema  de gestión de productos. ¡Hasta Luego!");

}

















