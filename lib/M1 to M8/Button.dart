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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.red,
        appBarTheme: const AppBarTheme(
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

  void mySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(20),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              mySnackBar("Shop TextButton", context);
            },
            child: const Text("Shop Now"),
          ),
          ElevatedButton(
            onPressed: () {
              mySnackBar("Shop ElevatedButton", context);
            },
            child: const Text("Shop Now"),
            style: buttonStyle,
          ),
          OutlinedButton(
            onPressed: () {
              mySnackBar("OutlinedButton", context);
            },
            child: const Text("Shop Now"),
          ),
        ],
      ),
    );
  }
}
