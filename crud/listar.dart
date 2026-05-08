// Listar
import 'dart:io';

void listarProductos(List<Map<String, dynamic>> productos) {

  if (productos.isEmpty) {
    print("No hay productos registrados.");
  } else {

    print("\n===== LISTA DE PRODUCTOS =====");

    for (int i = 0; i < productos.length; i++) {

      print("\nProducto #${i + 1}");
      print("Nombre: ${productos[i]['nombre']}");
      print("Precio: \$${productos[i]['precio']}");
      print("Cantidad disponible: ${productos[i]['cantidad']}");
    }
  }
}