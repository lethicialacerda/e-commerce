import 'package:e_commerce/telas/home_page.dart';
import 'package:e_commerce/telas/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Lacerda',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}


