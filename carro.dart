class Carro extends Vehiculo {
  int numeroPuertas;

  Carro(this.numeroPuertas, String marca, String modelo, {int? anio, String? estado})
      : super(marca, modelo, anio: anio, estado: estado);

  @override
  double calcularCostoServicio() {
    if (getEstado() == 'inactivo') {
      print("Vehículo $marca no disponible para servicio");
      return 0;
    }

    double costo = 50000;

    if (getEstado() == 'activo') {
      if (numeroPuertas >= 4) {
        costo += 20000;
      } else if ((anio ?? 0) > 10) {
        costo += 15000;
      } else {
        costo += 10000;
      }
    }
    return costo;
  }

  bool esFamiliar() => numeroPuertas > 4;
}