import 'package:flutter/material.dart';
import 'package:meowtagram/home.dart';
import 'package:meowtagram/screens/demo_page_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: DemoPage(),
    );
  }
}
