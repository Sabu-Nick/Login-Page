import 'package:flutter/material.dart';

import 'Screen/products_list_screen.dart';

class CrupApp extends StatelessWidget {
  const CrupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductsListScreen(),
    );
  }
}
