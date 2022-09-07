import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'homeScreen.dart';
import 'toDoList.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ToDoList(),
    child:MyApp(),
  ));
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
