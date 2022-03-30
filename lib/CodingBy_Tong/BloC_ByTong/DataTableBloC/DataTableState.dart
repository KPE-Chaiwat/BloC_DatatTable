import 'package:equatable/equatable.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/data/HeatingData.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/data/HeatingTimeData.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/data/PositionData.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/data/VoltagePowerData.dart';

import '../../Repository/data/dataSource.dart';

abstract class DataTableState extends Equatable {}

class InitailDataTableState extends DataTableState {
  final DataSource data;
  InitailDataTableState(this.data);
  @override
  List<Object?> get props => [];
}

class LoadingDataTableState extends DataTableState {
  @override
  List<Object?> get props => [];
}

class VoltagePowerDataTableState extends DataTableState {
  final VoltagePowerData dataVoltePower;
  VoltagePowerDataTableState(this.dataVoltePower);
  @override
  List<Object?> get props => [dataVoltePower];
}

class HeatingDataTableState extends DataTableState {
  final HeatingDatasource dataHeating;
  HeatingDataTableState(this.dataHeating);

  @override
  List<Object?> get props => [dataHeating];
}

class HeatingTimeDataTableState extends DataTableState {
  final HeatingTimeData dataHeatingTime;
  HeatingTimeDataTableState(this.dataHeatingTime);
  @override
  List<Object?> get props => [dataHeatingTime];
}

class PositionDataDataTableState extends DataTableState {
  final PositionData dataPosition;
  PositionDataDataTableState(this.dataPosition);
  @override
  List<Object?> get props => [dataPosition];
}
