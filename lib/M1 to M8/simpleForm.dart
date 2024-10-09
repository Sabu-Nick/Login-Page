import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.red,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
        ),
      ),
      themeMode: ThemeMode.light,
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  void showSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60), // Set minimum size to ensure height
      padding: EdgeInsets.all(20), // Add padding
      backgroundColor: Colors.blue, // Set button color to blue
      textStyle: TextStyle(color: Colors.white), // Set text color to white
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero, // Remove rounded corners
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 0), // Apply margin here
            child: Padding(
              padding: EdgeInsets.all(10), // Apply padding inside the Container
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(), // Use a single OutlineInputBorder
                      labelText: 'Enter your name',
                    ),
                  ),
                  SizedBox(height: 10), // Space between TextFields
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(), // Use a single OutlineInputBorder
                      labelText: 'Enter your number',
                    ),
                  ),
                  SizedBox(height: 10), // Space between TextFields
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(), // Use a single OutlineInputBorder
                      labelText: 'Enter your @gmail',
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Submit'), // Button text
                    style: buttonStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
