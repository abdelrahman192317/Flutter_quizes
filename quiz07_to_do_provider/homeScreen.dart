import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'form.dart';

import 'toDoList.dart';
import 'card.dart';

final scaffoldState = GlobalKey<ScaffoldState>();

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    void _showSheet() => showDialog(context: context, builder: (_) => FormWidget());

    final size = MediaQuery.of(context).size;

    return Consumer<ToDoList>(
      builder: (ctx, val, child) => Scaffold(
        key: scaffoldState,
        appBar: AppBar(
          title: Text('To Do List'),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.all(5),
          child: ListView.builder(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            itemBuilder: (ct, index) => CardWidget(
              task: val.list[index],
            ),
            itemCount: val.list.length,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>  _showSheet(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}