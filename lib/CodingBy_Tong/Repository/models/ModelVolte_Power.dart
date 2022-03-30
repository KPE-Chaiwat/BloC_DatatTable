class ModelVoltePower {
  final String order;
  final String items;
  final String unit;
  final double setValue;
  final List<double> meas;

  ModelVoltePower(
      {required this.order,
      required this.items,
      required this.unit,
      required this.setValue,
      required this.meas});
}
