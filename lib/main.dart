import 'package:e_commerce/telas/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lacerda',
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}


