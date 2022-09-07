
class Task {
  final String name;
  final DateTime day;
  bool isDone;
  Task({
    required this.name,
    required this.day,
    this.isDone = false
  });


  void toggle() {
    this.isDone = true;
  }
}