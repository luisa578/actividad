void main (){

}
Class Vehiculo{
  String? marca;
  String? modelo;
  int? anio;
  String? _estado;
  Vehiculo(this.marca, this.modelo,{this.anio, String estado}): _estado = estado;
  super(marca,modelo,anio:anio,estado:estado);
  void mostrarInfo(){
    print("la marca es Smarca");
    print("el modelo es Smodelo");
    print("el anio es $anio");
    print ("el estado es §_estado"); 
    double (calcularCostoservicio)
    return 0;
  }
  void setEstado(String valor){
    this._estado= valor;
    String getEstado(){
      return this._estadol;
    }
  }
  
}
