class Receta {
  final String instrucciones;
  final int prepTime;
  final int calorias;
  final List<String> ingredientes;
  final List<double> costoingrediente;
  final double costoTotal;

  Receta({
    required this.instrucciones,
    required this.prepTime,
    required this.calorias,
    required this.ingredientes,
    required this.costoingrediente,
    required this.costoTotal,
  });
}
