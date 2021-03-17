import 'package:desing_app/src/pages/botones_page.dart';
import 'package:flutter/material.dart';

// Importaciones propias
import 'package:desing_app/src/pages/basico_page.dart';
import 'package:flutter/services.dart';

import 'src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desing App',
      initialRoute: 'botones',
      theme: ThemeData(fontFamily: 'Monserat'),
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
      },
    );
  }
}
