import 'package:flutter/material.dart';

import 'task.dart';

class ToDoList extends ChangeNotifier {

  List<Task> _tasks = [];

  List<Task> get list {
    return _tasks.where((e) => !e.isDone).toList();
  }

  int get count {
    return _tasks.length;
  }

  String _name = "task";
  TimeOfDay _time = TimeOfDay.now();
  DateTime _day = DateTime.now();

  String get name {
    return _name;
  }

  TimeOfDay get time {
    return _time;
  }

  DateTime get day {
    return _day;
  }

  void changeName(String name) {
    this._name = name;
    notifyListeners();
  }

  void changeDay(DateTime day) {
    this.d = true;
    this._day = DateTime(day.year,day.month,day.day,_time.hour,_time.minute);
    notifyListeners();
  }

  bool p = false;
  bool d = false;

  void toggleDone() {
    this.p = !this.p;
    notifyListeners();
  }

  void d2false() {
    this.d = false;
    notifyListeners();
  }


  void toggleTask(Task task) {
    task.toggle();
    notifyListeners();
  }

  void addToList(String name, DateTime day) {
    _tasks.add(Task(name: _name, day: _day));
    notifyListeners();
  }



  void deleteFromList(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}