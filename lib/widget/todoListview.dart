import 'package:flutter/material.dart';
import 'package:todoapp/controller/todoController.dart';

ListView todoListview(TodoController myType) {
  return ListView.builder(
    itemCount: myType.todoList.length,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Title: ${myType.todoList[index].title}"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Content: ${myType.todoList[index].subTitle}"),
              ),
            ],
          ),
        ),
      );
    },
  );
}
