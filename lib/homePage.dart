import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/controller/todoController.dart';
import 'package:todoapp/createTODO.dart';
import 'package:todoapp/model/todoModel.dart';
import 'package:todoapp/widget/todoListview.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TodoModel> todoItem = [];

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoController>(
      builder: (context, myType, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateTodoPage(),
                ),
              );
            },
          ),
          appBar: AppBar(
            title: Text('TODO APP'),
            centerTitle: true,
          ),
          body: myType.todoList.length == 0
              ? Center(
                  child: Text("No TODO added"),
                )
              : todoListview(myType),
        );
      },
    );
  }
}
