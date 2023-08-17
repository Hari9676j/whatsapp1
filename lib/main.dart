import 'package:flutter/material.dart';
import 'package:whatsapp1/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? Key}): super(key: Key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whats app',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Homescreem(),
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}

