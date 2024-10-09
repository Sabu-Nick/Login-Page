
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(

      ),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Snackbar(messages, context){
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(messages)));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Styling App",
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

    );
  }
}
