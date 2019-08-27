import 'package:flutter/material.dart';
import 'package:flutter_list_aps/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista telegram',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), //Tela principal
      );
  }
}

