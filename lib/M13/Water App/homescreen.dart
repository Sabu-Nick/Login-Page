import 'package:flutter/material.dart';

class WaterTrackerHomeScreen extends StatefulWidget {
  const WaterTrackerHomeScreen({super.key});

  @override
  State<WaterTrackerHomeScreen> createState() => _WaterTrackerHomeScreenState();
}

class _WaterTrackerHomeScreenState extends State<WaterTrackerHomeScreen> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Water Tracker"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "12",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              color: Colors.green,
            ),
          ),
          Text(
            "Glasses",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Add"),
          ),
          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: "Enter amount",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10), // Adds spacing between input and button
                ElevatedButton(
                  onPressed: () {
                    // Add functionality here, e.g., add a new entry
                  },
                  child: Text("Add"),
                ),
              ],
            ),
          ),

          SizedBox(height: 30),

          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Time"),
                  subtitle: Text("Date"),
                  leading: Text("1"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete), // Fixed IconButton usage
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose(); // Dispose of the controller when done
    super.dispose();
  }
}
