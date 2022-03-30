import 'dart:html';

import 'package:flutter/material.dart';

class TongButtonCustom extends StatelessWidget {
  const TongButtonCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoxDecoration _myBoxDecoration = BoxDecoration(
      color: Colors.white,
      border: Border.all(width: 1.0),
      borderRadius: const BorderRadius.all(
          Radius.circular(5.0) //                 <--- border radius here
          ),
    );

    return InkWell(
      onTap: () {},
      child: Container(
          width: 150,
          height: 40,
          decoration: _myBoxDecoration,
          child: Row(
            children: const [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.settings,
                color: Colors.black,
                size: 30.0,
              ),
              SizedBox(
                width: 20,
              ),
              Text("SETTINGS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ))
            ],
          )),
    );
  }
}
