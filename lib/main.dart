import 'package:flutter/material.dart';
import 'package:ganho_parceiro/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ganhos',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHome(),
    );
  }
}
