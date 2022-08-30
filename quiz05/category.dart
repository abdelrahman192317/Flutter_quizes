import 'package:flutter/material.dart';
import 'package:quiz_app/items.dart';
import 'rooms.dart';
import 'data.dart';

class Category extends StatefulWidget {
  static final String named = 'category';

  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  Data data = Data();

  @override
  Widget build(BuildContext context) {
    List<Room> list = data.room;

    return Scaffold(
      appBar: AppBar(
        title: Text("Rooms"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: list.map((item) => Items(room: item)).toList(),
      ),
    );
  }
}
