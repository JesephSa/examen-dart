import 'dart:io';

List<Map<String, dynamic>> productos = [];

void crear() {
  print("Has seleccionado Crear");
  print("¿Cuántos productos deseas ingresar?");
  
  int cantidadProductos = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantidadProductos; i++) {
    
    print("Ingresa el nombre del productos ${i + 1}:");
    String nombre = stdin.readLineSync()!;

    print("Ingresa el precio del producto:");
    double precio = double.parse(stdin.readLineSync()!);

    print("Ingresa la cantidad del producto:");
    int cantidad = int.parse(stdin.readLineSync()!);

    productos.add({
      "nombre": nombre,
      "precio": precio,
      "cantidad": cantidad
    });
  }

  print("Productos registrados correctamente");

  print(productos);
}