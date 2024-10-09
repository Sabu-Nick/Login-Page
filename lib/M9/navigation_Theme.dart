import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello, I am Sabu!",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text("Name"),
                hintText: 'Enter Your Name',
                prefixIcon: Icon(Icons.account_circle),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                label: Text("Name"),
                hintText: 'Enter Your Name',
                prefixIcon: Icon(Icons.account_circle),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                label: Text("Name"),
                hintText: 'Enter Your Name',
                prefixIcon: Icon(Icons.account_circle),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
