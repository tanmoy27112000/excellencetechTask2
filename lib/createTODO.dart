import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/controller/todoController.dart';

class CreateTodoPage extends StatefulWidget {
  CreateTodoPage({Key key}) : super(key: key);

  @override
  _CreateTodoPageState createState() => _CreateTodoPageState();
}

class _CreateTodoPageState extends State<CreateTodoPage> {
  String title;
  String subTitle;
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoController>(
      builder: (context, myType, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("CREATE TODO"),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [textFieldColumn(), saveButton(myType, context)],
          ),
        );
      },
    );
  }

  Padding saveButton(TodoController myType, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          myType.createTODO(title, subTitle);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('TODO saved'),
            ),
          );
          Navigator.pop(context);
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "SAVE",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }

  Column textFieldColumn() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Title',
            ),
            onChanged: (val) {
              title = val;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Content',
            ),
            onChanged: (val) {
              subTitle = val;
            },
          ),
        ),
      ],
    );
  }
}
