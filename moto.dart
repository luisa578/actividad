class Moto extends Vehiculo {
  int cilindraje;
  Moto(this.cilindraje,String marca, String modelo, {int? anio, String? estado})
      :super(marca, modelo, anio: anio, estado: estado);

  @override
  double calcularCostoServicio() {
    if (getEstado() == 'inactivo') {
      print("Motocicleta $marca no disponible para servicio");
      return 0;
    }

    double costo = 50000;
    if (getEstado() == 'activo') {
      if (cilindraje > 200) {
        costo += 25.000;
      }else{
        costo += 10.000;
      }
    }

    if (anio! > 5) {
      costo += 10.000;
    }

    return costo;
  }
}