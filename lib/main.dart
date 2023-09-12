import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: Listview1Screen(),
      initialRoute: 'home',
      //Retorna una funcion que devuelve un Widget y recibe el buildContext
      routes: {
        "home": (context) => HomeScreen(),
        "listview1": (context) => Listview1Screen(),
        "listview2": (context) => Listview2Screen(),
        "card": (context) => CardScreen(),
        "alert": (context) => AlertScreen()
      },
    );
  }
}
