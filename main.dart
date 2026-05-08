import 'dart:io';

import 'crud/crear.dart';
import 'crud/listar.dart';
import 'crud/actualizar.dart';
import 'crud/eliminar.dart';

List<Map<String, dynamic>> productos = [];

void main() {
  int opcion;

  do {
    print("\n===== CRUD DE PRODUCTOS =====");
    print("1. Agregar producto");
    print("2. Listar productos");
    print("3. Modificar producto");
    print("4. Eliminar producto");
    print("5. Salir");
    print("Ingrese una opción:");

    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        crear();
        break;

      case 2:
        listarProductos(productos);
        break;

      case 3:
        actualizar();
        break;

      case 4:
        eliminar();
        break;

      case 5:
        print("Saliendo del programa...");
        break;

      default:
        print("Opción no válida");
    }
  } while (opcion != 5);
}