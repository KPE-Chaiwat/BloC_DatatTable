import 'package:flutter/material.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/models/ModelHeating.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/models/ModelHeatingTime.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/models/ModelVolte_Power.dart';
import 'package:tpk_login_v2/CodingBy_Tong/Repository/models/modelPos.dart';

class DataSource {
  List<ModelVoltePower> data1 = [
    ModelVoltePower(
      order: '1st',
      items: 'Output voltage',
      unit: 'V',
      setValue: 290,
      meas: [287.0, 287.0, 289.0],
    ),
    ModelVoltePower(
      order: '2nd',
      items: 'Outpu t Power',
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
  List<ModelHeating> data2 = [
    ModelHeating(
      order: '1st',
      items: 'HEATING TEMP',
      unit: 'c',
      meas: 374,
      min: 64,
      max: 374,
    ),
    ModelHeating(
      order: '2nd',
      items: 'HEATING TEMP',
      unit: 'c',
      meas: 592,
      min: 441,
      max: 592,
    ),
    ModelHeating(
      order: '3rd',
      items: 'HEATING TEMP',
      unit: 'c',
      meas: 686,
      min: 612,
      max: 683,
    ),
    ModelHeating(
      order: '4th',
      items: 'HEATING TEMP',
      unit: 'c',
      meas: 0,
      min: 0,
      max: 0,
    ),
  ];
  static List<ModelHeatingTime> data3 = [
    ModelHeatingTime(
        order: '1st',
        items: 'HEATING TIME',
        unit: 'sec',
        set_time: 9.00,
        meas: 9.00),
    ModelHeatingTime(
      order: '2nd',
      items: 'HEATING TIME',
      unit: 'sec',
      set_time: 0.00,
      meas: 0.00,
    ),
    ModelHeatingTime(
      order: '2nd',
      items: 'HEATING TIME',
      unit: 'sec',
      set_time: 7.8,
      meas: 7.8,
    ),
    ModelHeatingTime(
      order: '3rd',
      items: 'HEATING TIME',
      unit: 'sec',
      set_time: 0.00,
      meas: 0.00,
    ),
    ModelHeatingTime(
      order: '3rd',
      items: 'HEATING TIME',
      unit: 'sec',
      set_time: 13.0,
      meas: 13.0,
    ),
    ModelHeatingTime(
        order: '4th',
        items: 'HEATING TIME',
        unit: 'sec',
        set_time: 0.00,
        meas: 0.00),
    ModelHeatingTime(
      order: '4th',
      items: 'HEATING TIME',
      unit: 'sec',
      set_time: 0.00,
      meas: 0.00,
    ),
    ModelHeatingTime(
        order: 'AIR',
        items: 'COOLING TIME',
        unit: 'sec',
        set_time: 0.00,
        meas: 0.00),
  ];
  static List<ModelPos> data4 = [
    ModelPos(
      item: 'HEATING pos',
      unit: 'mm',
      set_value: 218.0,
      meas: 218.0,
    ),
    ModelPos(
      item: 'Home pos',
      unit: 'mm',
      set_value: 100.0,
      meas: 99.0,
    ),
    ModelPos(
      item: 'HEAD pos',
      unit: 'mm',
      set_value: 119.00,
      meas: 119.00,
    ),
    ModelPos(
      item: 'TAIL pos',
      unit: 'mm',
      set_value: 105,
      meas: 119.00,
    ),
    ModelPos(
      item: 'CYCLE pos',
      unit: 'mm',
      set_value: 103,
      meas: 119.00,
    ),
    ModelPos(
      item: 'centering pos',
      unit: 'mm',
      set_value: 46.5,
      meas: 119.00,
    ),
  ];
}
