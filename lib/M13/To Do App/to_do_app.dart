import 'package:flutter/material.dart';
import 'package:flutter_pratices_project_ostad/M13/To%20Do%20App/todohomepage.dart';
void main() {
  runApp(ToDoApp());
}
class ToDoApp extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),

      title: "To Do",
      home: ToDoPage(),
    );
  }
}
