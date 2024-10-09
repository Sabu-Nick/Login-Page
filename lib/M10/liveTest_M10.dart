
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Text("Flutter Text Styling", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),),
              Text("Experiment with text styles",style: TextStyle(fontSize: 16,fontStyle: FontStyle.italic),),
              TextButton(onPressed: (){
                Snackbar("You clicked the button!", context);
              }, child: Text("Click Me"),)
             ], 
        ),
      ),
    );
  }
}
