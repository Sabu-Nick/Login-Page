// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Counter App",
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return MyHomePageUI();
//   }
// }
//
// class MyHomePageUI extends State<MyHomePage> {
//   int countNumber = 0;
//
//   // Method to increment the number
//   void _addNumber() {
//     setState(() {
//       countNumber++; // Increment the number
//     });
//   }
//
//   // Method to decrement the number
//   void _removeNumber() {
//     setState(() {
//       countNumber--; // Decrement the number
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Counter App'),
//       ),
//       body: Center(
//         child: Text(
//           countNumber.toString(),
//           style: TextStyle(fontSize: 30), // Increase text size for better visibility
//         ),
//       ),
//       // Using Stack to place multiple floating buttons
//       floatingActionButton: Stack(
//         children: [
//           // Add Button
//           Positioned(
//             bottom: 80, // Adjust position
//             right: 10,
//             child: FloatingActionButton(
//               child: Icon(Icons.add),
//               onPressed: _addNumber,
//
//             ),
//           ),
//           // Subtract Button
//           Positioned(
//             bottom: 10, // Adjust position
//             right: 10,
//             child: FloatingActionButton(
//               child: Icon(Icons.remove),
//               onPressed: _removeNumber,
//
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingBagApp());
}

class ShoppingBagApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingBagScreen(),
    );
  }
}

class ShoppingBagScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bag'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  buildCartItem('Pullover', 'Black', 'L', 51),
                  buildCartItem('T-Shirt', 'Gray', 'L', 30),
                  buildCartItem('Sport Dress', 'Black', 'M', 43),
                ],
              ),
            ),
            buildTotalAmount(),
            SizedBox(height: 16),
            buildCheckoutButton(),
          ],
        ),
      ),
    );
  }

  Widget buildCartItem(String name, String color, String size, double price) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.asset('assets/tshirt.png', width: 50), // Replace with your image
        title: Text(name),
        subtitle: Text('Color: $color   Size: $size'),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('\$$price'),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {},
                ),
                Text('1'),
                IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTotalAmount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total amount:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          '\$124',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget buildCheckoutButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Colors.green, // Adjusted to your preference
        ),
        child: Text(
          'CHECK OUT',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

