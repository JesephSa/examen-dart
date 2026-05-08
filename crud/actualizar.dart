// Actualizar
import 'dart:io';
import '../crud/crear.dart';
import '../crud/listar.dart';

void actualizar() {


  if (productos.isEmpty) {

    print("No hay productos registrados.");
    return;
  }

  listarProductos(productos);

  print("\nIngrese el número del producto a actualizar:");
  int numProducto = int.parse(stdin.readLineSync()!);

  if (numProducto > 0 && numProducto <= productos.length) {

    int indice = numProducto - 1;

    print(
      "Ingrese el nuevo nombre "
      "(Enter para conservar: ${productos[indice]["nombre"]})"
    );

    String nuevoNombre = stdin.readLineSync()!;

    if (nuevoNombre.trim().isNotEmpty) {
      productos[indice]["nombre"] = nuevoNombre;
    }

    print(
      "Ingrese el nuevo precio "
      "(Enter para conservar: ${productos[indice]["precio"]})"
    );

    String nuevoPrecio = stdin.readLineSync()!;

    if (nuevoPrecio.trim().isNotEmpty) {
      productos[indice]["precio"] = double.parse(nuevoPrecio);
    }

    print(
      "Ingrese la nueva cantidad "
      "(Enter para conservar: ${productos[indice]["cantidad"]})"
    );

    String nuevaCantidad = stdin.readLineSync()!;

    if (nuevaCantidad.trim().isNotEmpty) {
      productos[indice]["cantidad"] = int.parse(nuevaCantidad);
    }

    print("Producto actualizado correctamente.");

  } else {

    print("Número de producto no válido.");
  }
}