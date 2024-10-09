import 'package:flutter/material.dart';

import 'homescreen.dart';


class WaterTrackerApp extends StatefulWidget {
  const WaterTrackerApp({super.key});

  @override
  State<WaterTrackerApp> createState() => _WaterTrackerAppState();
}

class _WaterTrackerAppState extends State<WaterTrackerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WaterTrakerHomeScreen(),
    );
  }
}
