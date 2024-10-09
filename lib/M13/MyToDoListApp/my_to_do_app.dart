import 'package:flutter/material.dart';

import 'my_to_do_homepage.dart';

void main(){
  runApp(MyToDoApp());
}

class MyToDoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(primaryColor: Colors.red),

     title: "To Do",
     home: MyToDoHomePage(),
   );
  }

}