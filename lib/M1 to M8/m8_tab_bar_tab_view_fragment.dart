import 'package:flutter/material.dart';
import 'package:flutter_pratices_project_ostad/Tab%20View%20Body%20Screen/TabViewAccountScreen.dart';
import 'package:flutter_pratices_project_ostad/Tab%20View%20Body%20Screen/TabViewAlarmScreen.dart';
import 'package:flutter_pratices_project_ostad/Tab%20View%20Body%20Screen/TabViewBalanceScreen.dart';
import 'package:flutter_pratices_project_ostad/Tab%20View%20Body%20Screen/TabViewBankScreen.dart';
import 'package:flutter_pratices_project_ostad/Tab%20View%20Body%20Screen/TabViewHomeScreen.dart';
import 'package:flutter_pratices_project_ostad/Tab%20View%20Body%20Screen/TabViewMessageScreen.dart';
import 'package:flutter_pratices_project_ostad/Tab%20View%20Body%20Screen/TabViewPhoneScreen.dart';
import 'package:flutter_pratices_project_ostad/Tab%20View%20Body%20Screen/TabViewSettingsScreen.dart';

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
          backgroundColor: Colors.blueAccent,
        ),
      ),
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My App Tab"),
          bottom: const TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.home_filled), text: "Home"),
              Tab(icon: Icon(Icons.message), text: "Message"),
              Tab(icon: Icon(Icons.account_box), text: "Account"),
              Tab(icon: Icon(Icons.phone_android), text: "Phone"),
              Tab(icon: Icon(Icons.account_balance), text: "Balance"),
              Tab(icon: Icon(Icons.food_bank_rounded), text: "Bank"),
              Tab(icon: Icon(Icons.access_alarm), text: "Alarm"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            TabViewHomeScreen(),
            TabViewAccountScreen(),
            TabViewAlarmScreen(),
            TabViewBalanceScreen(),
            TabViewBankScreen(),
            TabViewMessageScreen(),
            TabViewSettingsScreen(),
            TabViewPhoneScreen()
          ],
        ),
      ),
    );
  }
}
