import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/controller/todoController.dart';
import 'package:todoapp/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TodoController(),
        ),
      ],
      child: MaterialApp(
        title: 'TODO App',
        home: HomePage(),
      ),
    );
  }
}
