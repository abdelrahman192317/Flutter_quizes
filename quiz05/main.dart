import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'category.dart';
import 'details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rooms",
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        Category.named: (context) => Category(),
      },
    );
  }
}
