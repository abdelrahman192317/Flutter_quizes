import 'package:flutter/material.dart';
import 'home.dart';
import 'favorite.dart';
import 'filter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int select = 0;

  List<Widget> list = [Home(), Favorite(), Filter()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[select],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        onTap: (val) {
          setState(() {
            select = val;
          });
        },
        currentIndex: select,
        selectedItemColor: Colors.blueAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
