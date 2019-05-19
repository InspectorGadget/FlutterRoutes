import 'package:flutter/material.dart';
import 'package:routes/pages/firstpage.dart';
import 'package:routes/pages/homepage.dart';
import 'package:routes/pages/secondpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => new HomePage(),
        '/first': (BuildContext context) => new FirstPage(),
        '/second': (BuildContext context) => new SecondPage()
      },
    );
  }
}