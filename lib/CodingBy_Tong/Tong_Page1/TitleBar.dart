import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tpk_login_v2/CodingBy_Tong/BloC_ByTong/DataTableBloC/DataTableEvent.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Compronent/TextButton.dart';

import '../BloC_ByTong/DataTableBloC/DataTableBloC.dart';
import '../Compronent/Tong_Button.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // color: Colors.grey.shade400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
              child: Row(
                children: [
                  TextButton_Custom(
                    message: 'Heating',
                    onClick: () {},
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  TextButton_Custom(
                    message: 'HeatingTime',
                    onClick: () {},
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  TextButton_Custom(
                    message: 'Position',
                    onClick: () {
                      BlocProvider.of<DataTableBloc>(context)
                          .add(PositionDataTableEvent());
                      // context
                      //     .read<DataTableBloc>()
                      //     .add(PositionDataTableEvent());
                    },
                  ),
                ],
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(right: 40), child: TongButtonCustom())
        ],
      ),
    );
  }
}
