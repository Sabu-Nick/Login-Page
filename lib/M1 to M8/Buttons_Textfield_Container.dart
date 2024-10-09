import 'package:flutter/cupertino.dart';
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
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  final List<String> friendList = [
    'Sabbir', 'Riya', 'Ahmed', 'Anika', 'Shahadat', 'Hossain','Mohammad',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello, World!",
          style: TextStyle(color: Colors.white),
        ),
      ),
      // body: ListView.separated(
      //   itemCount: friendList.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       leading: Text((index+1).toString(),style: TextStyle(
      //         fontSize: 22,
      //       ),),
      //       title: Text(friendList[index]),
      //       subtitle:  Text("Hello! My name is ${friendList[index]}"),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //       titleTextStyle: TextStyle(
      //         fontSize: 22,
      //         color: Colors.black87,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     );
      //   },
      //   separatorBuilder: (context, index) => const Divider(), // Optional separator between items
      // ),



    );
  }
}
