import 'dart:html';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tpk_login_v2/CodingBy_Tong/BloC_ByTong/DataTableBloC/DataTableEvent.dart';
import 'package:tpk_login_v2/CodingBy_Tong/BloC_ByTong/DataTableBloC/DataTableState.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/data/HeatingData.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/data/HeatingTimeData.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/data/PositionData.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/data/VoltagePowerData.dart';

import '../../Repository/data/dataSource.dart';

class DataTableBloc extends Bloc<DataTableEvent, DataTableState> {
  final VoltagePowerData dataVolte;
  final HeatingDatasource dataHeating;
  final PositionData dataPosition;
  final HeatingTimeData dataHeatingTime;

  DataTableBloc(
      this.dataVolte, this.dataHeating, this.dataPosition, this.dataHeatingTime)
      : super(VoltagePowerDataTableState(dataVolte)) {
    on<HeatingDataTableEvent>(
        (event, emit) => HeatingDataTableState(dataHeating));
    on<PositionDataTableEvent>(
        (event, emit) => PositionDataDataTableState(dataPosition));
    on<HeatingTimeDataTableEvent>(
        (event, emit) => HeatingTimeDataTableState(dataHeatingTime));
  }
}
