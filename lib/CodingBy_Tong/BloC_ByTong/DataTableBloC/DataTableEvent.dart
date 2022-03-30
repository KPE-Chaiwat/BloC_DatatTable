import 'package:equatable/equatable.dart';

abstract class DataTableEvent extends Equatable {}

// class LoadedDataTableEvent extends DataTableEvent {
//   @override
//   List<Object?> get props => [];
// }
class VoltagePowerDataTableEvent extends DataTableEvent {
  @override
  List<Object?> get props => [];
}

class PositionDataTableEvent extends DataTableEvent {
  @override
  List<Object?> get props => [];
}

class HeatingDataTableEvent extends DataTableEvent {
  @override
  List<Object?> get props => [];
}

class HeatingTimeDataTableEvent extends DataTableEvent {
  @override
  List<Object?> get props => [];
}
