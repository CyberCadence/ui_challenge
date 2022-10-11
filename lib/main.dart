import 'package:flutter/material.dart';
import 'package:ui_challenge/views/ReusableWigets.dart';
import 'package:ui_challenge/views/landingPage.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return const MaterialApp(home: HomePage(),);
    
  }
}