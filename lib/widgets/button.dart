import 'package:flutter/material.dart';



final ButtonStyle buttons = ElevatedButton.styleFrom(
  fixedSize: Size(154, 40),
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5))
  ),
  backgroundColor: Colors.black,
  foregroundColor: Colors.white,
);

final ButtonStyle buttonProduct = ElevatedButton.styleFrom(
  alignment: Alignment.center,
  padding: EdgeInsets.all(4.0),
  backgroundColor: Colors.grey,
  minimumSize: Size(5, 5),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(4))
  ),
);