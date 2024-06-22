import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box("mybox");

  // run this method if this is the 1st time opening this app
  void createInitialData() {
    toDoList = [
      ["Make your todo list", false],
      ["Do Exercise", false],
    ];
  }

  // load the data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
