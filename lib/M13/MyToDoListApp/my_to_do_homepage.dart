import 'package:flutter/material.dart';
import 'my_to_do_style.dart'; // Ensure this file contains the myToDoTextFormFieldStyle function

class MyToDoHomePage extends StatefulWidget {
  const MyToDoHomePage({super.key});

  @override
  State<MyToDoHomePage> createState() => _MyToDoHomePageState();
}

class _MyToDoHomePageState extends State<MyToDoHomePage> {
  final TextEditingController _todoController = TextEditingController(); // Controller for TextFormField
  final List<String> _toDoList = []; // List to store ToDos

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My To Do",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 70,
                  child: TextFormField(
                    controller: _todoController,
                    decoration: myToDoTextFormFieldStyle(),
                  ),
                ),
                const SizedBox(width: 20), // Space between text field and button
                Expanded(
                  flex: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_todoController.text.isNotEmpty) {
                          _toDoList.add(_todoController.text); // Add item to the list
                          _todoController.clear(); // Clear the input field
                        }
                      });
                    },
                    child: const Text("Add To Do"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Space between input row and the list
            Expanded(
              child: _toDoList.isEmpty
                  ? const Center(child: Text("No ToDos added yet!"))
                  : ListView.builder(
                itemCount: _toDoList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_toDoList[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _todoController.dispose(); // Clean up the controller when the widget is disposed
    super.dispose();
  }
}
