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

final ButtonStyle buttonFavorite = ElevatedButton.styleFrom(
  alignment: Alignment.center,
  padding: EdgeInsets.all(4.0),
  backgroundColor: Colors.white54,
  minimumSize: Size(5, 5),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2))
  ),
);

final ButtonStyle buttonCard = ElevatedButton.styleFrom(
  alignment: Alignment.center,
  padding: EdgeInsets.all(4.0),
  backgroundColor: Colors.white54,
  minimumSize: Size(120, 10),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2))
  ),
);