import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/data/HeatingData.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/data/HeatingTimeData.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/data/PositionData.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/data/VoltagePowerData.dart';

//--------------------------------------

import 'CodingBy_Tong/BloC_ByTong/DataTableBloC/DataTableBloC.dart';
import 'CodingBy_Tong/BloC_ByTong/DataTableBloC/DataTableEvent.dart';
import 'CodingBy_Tong/Repository/data/dataSource.dart';
import 'bloc/Observe/appBlocObserver.dart';
import 'bloc/cubit/Rebuild.dart';
import 'mainBody.dart';

//--------------------------------------

void main() {
  BlocOverrides.runZoned(
    // () => runApp(RepositoryProvider(
    //     create: (context) => DataSource(),
    //     child: const MyApp(),
    //   )),
    //   blocObserver: AppBlocObserver(),
    // );
    () => runApp(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => DataSource(),
          ),
          RepositoryProvider(
            create: (context) => HeatingDatasource(),
          ),
          RepositoryProvider(
            create: (context) => HeatingTimeData(),
          ),
          RepositoryProvider(
            create: (context) => VoltagePowerData(),
          ),
          RepositoryProvider(
            create: (context) => PositionData(),
          ),
        ],
        child: const MyApp(),
      ),
    ),
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<DataTableBloc>(
          create: (context) => DataTableBloc(
                RepositoryProvider.of<VoltagePowerData>(context),
                RepositoryProvider.of<HeatingDatasource>(context),
                RepositoryProvider.of<PositionData>(context),
                RepositoryProvider.of<HeatingTimeData>(context),
              )
          // )..add(VoltagePowerDataTableEvent()),
          ),
      BlocProvider<BlocPageRebuild>(
        create: (BuildContext context) =>
            BlocPageRebuild(), //For rebuild only page inside without app bar/left menu
      ),
    ], child: const MainContext());
  }
}

class MainContext extends StatelessWidget {
  const MainContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocPageRebuild, bool>(
      builder: (_, e) {
        return MaterialApp(
          title: 'Flutter Login',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          home: const MainBlocRebuild(),
        );
      },
    );
  }
}
