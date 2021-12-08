import 'package:flutter/material.dart';
import 'ListPage.dart';
import 'home_page.dart';
import 'ChessOpenings.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primaryColor: Color.fromRGBO(243,242,237,1.0)),
      home:ListV(),
    );
  }
}