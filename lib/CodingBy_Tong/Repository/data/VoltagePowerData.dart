import 'package:tpk_login_v2/CodingBy_Tong/Repository/models/ModelVolte_Power.dart';

class VoltagePowerData {
  List<ModelVoltePower> dataVoltePowerList = [
    ModelVoltePower(
      order: '1st',
      items: 'Output voltage',
      unit: 'V',
      setValue: 290,
      meas: [287.0, 287.0, 289.0],
    ),
    ModelVoltePower(
      order: '2nd',
      items: 'Output Power',
      unit: 'Kw',
      setValue: 185,
      meas: [9.4, 9.6, 9.6],
    ),
    ModelVoltePower(
      order: '3rd',
      items: 'Output voltage',
      unit: 'v',
      setValue: 158,
      meas: [151, 151, 152],
    ),
    ModelVoltePower(
      order: '4th',
      items: 'Output Power',
      unit: 'Kw',
      setValue: 0,
      meas: [2.5, 2.3, 2.5],
    ),
    ModelVoltePower(
      order: '4th',
      items: 'Output Power',
      unit: 'Kw',
      setValue: 0,
      meas: [0.0, 0.0, 0.0],
    ),
  ];
}
