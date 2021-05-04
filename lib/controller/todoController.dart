import 'package:flutter/cupertino.dart';
import 'package:todoapp/model/todoModel.dart';

class TodoController extends ChangeNotifier {
  List todoList = [];

  createTODO(String title, String content) {
    todoList.add(TodoModel(title: title, subTitle: content));
    notifyListeners();
  }
}
