import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/pages/home.dart';
import 'package:providerdemo/providers/compter_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: ChangeNotifierProvider(
          child: Home(),
          create: (BuildContext context) {
            return CompteurProvider(0); // Valeur par defaut: 0
          },
        ));
  }
}
