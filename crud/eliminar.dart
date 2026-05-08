import 'dart:io';

import '../crud/crear.dart';
import '../crud/listar.dart';

// FUNCIÓN ELIMINAR PRODUCTO
void eliminarProducto() {

  if (productos.isEmpty) {

    print("No hay productos para eliminar");

    return;
  }

  listarProductos(productos);

  print("\nIngrese el número del producto que desea eliminar:");

  int indice = int.parse(stdin.readLineSync()!) - 1;

  if (indice >= 0 && indice < productos.length) {

    print("Producto eliminado: ${productos[indice]['nombre']}");

    productos.removeAt(indice);

  } else {

    print("Número inválido");
  }
}

// FUNCIÓN SALIR
void salirPrograma() {

  print("Gracias por usar el sistema de gestión de productos. ¡Hasta luego!");
}