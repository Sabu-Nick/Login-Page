import 'package:flutter/material.dart';
import 'package:flutter_pratices_project_ostad/M13/Others/style.dart';

void main() {
  runApp(MySummApp());
}

class MySummApp extends StatelessWidget {
  const MySummApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sum App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageUi();
  }
}

class MyHomePageUi extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Sum"),
SizedBox(height: 20,),
            // First text field with a label
            TextFormField(
              decoration: MyAppTextFieldStyle("First Number"),
            ),
            SizedBox(height: 20,),
            // Second text field with a label
            TextFormField(
              decoration: MyAppTextFieldStyle("Second Number"),

            ),

            SizedBox(height: 20,), // Adding spacing between elements

            // Elevated button
            ElevatedButton(
              onPressed: () {
                // Define the action on button press here
              },
              child: Text("Do Add Sum"),
              style: ElevatedButton.styleFrom(

              ),

            ),
          ],
        ),
      ),
    );
  }
}
