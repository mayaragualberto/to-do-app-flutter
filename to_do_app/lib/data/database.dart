import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  // lista das tarefas a serem feitas
  List toDoList = [];

  // referência a box
  final _myBox = Hive.box('mybox');

  // rodar esse método sempre que abrir o aplicativo
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Tutorial", false],
    ];
  }

  // carregar os dados do database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // atualizar a database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
