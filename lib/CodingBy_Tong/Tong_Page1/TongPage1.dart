import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tpk_login_v2/CodingBy_Tong/BloC_ByTong/DataTableBloC/DataTableEvent.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Tong_Page1/TitleBar.dart';

import '../BloC_ByTong/DataTableBloC/DataTableBloC.dart';
import '../BloC_ByTong/DataTableBloC/DataTableState.dart';

class TongPage1 extends StatelessWidget {
  const TongPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleBar(),
        BlocBuilder<DataTableBloc, DataTableState>(builder: (context, state) {
          if (state is LoadingDataTableState) {
            return const Text("dataLoading");
          }
          if (state is VoltagePowerDataTableState) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: DataTable2(
                columnSpacing: 12,
                horizontalMargin: 12,
                minWidth: 600,
                columns: const [
                  DataColumn2(label: Text('Id')),
                  DataColumn2(label: Text('Name')),
                  DataColumn2(
                    numeric: true,
                    label: Text(
                      'Price',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
                rows: state.dataVoltePower.dataVoltePowerList.map((item) {
                  return DataRow(cells: [
                    DataCell(Text(item.order.toString()), onTap: () {
                      BlocProvider.of<DataTableBloc>(context)
                          .add(PositionDataTableEvent());
                    }),
                    DataCell(Text(item.items.toString())),
                    DataCell(Text(item.unit.toString()))
                  ]);
                }).toList(),
              ),
            );
          }
          if (state is HeatingDataTableState) {
            print('444');
            return Text("HeatingTimeDataTableState");
          }
          if (state is PositionDataDataTableState) {
            return Text(state.dataPosition.dataPositions[0].meas.toString());
          } else {
            return const Text("data1 is Problem");
          }
        }),
      ],
    );
  }
}
