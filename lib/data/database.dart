// ignore_for_file: unused_import, unused_field, unused_local_variable

import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference our box
  final _myBox = Hive.box('mybox');

  //run this method if this 1st time open
  void createInitialData() {
    List toDoList = [
      ["Make Tutorial", true],
      ["creat task", false],
    ];
  }

  //load database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
