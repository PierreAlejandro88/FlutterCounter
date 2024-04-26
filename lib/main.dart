import 'package:flutter/material.dart';
import 'package:new_app/views/screens/counter/counter_functions.dart';
//import 'package:new_app/views/screens/counter/counter_screen.dart';

void main (){

  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.amber
      ),
      home: const CounterFunctions(),
    );
  }
}