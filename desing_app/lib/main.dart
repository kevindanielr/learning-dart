import 'package:flutter/material.dart';

// Importaciones propias
import 'package:desing_app/src/pages/basico_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desing App',
      initialRoute: 'basico',
      theme: ThemeData(fontFamily: 'Monserat'),
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
      },
    );
  }
}
