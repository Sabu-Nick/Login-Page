import 'package:flutter/material.dart';
import 'package:flutter_pratices_project_ostad/M13/To%20Do%20App/todoapp_style.dart';

class ToDoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ToDoPageView();
  }
}

class ToDoPageView extends State<ToDoPage> {
  final List<Map<String, String>> toDoList = [];

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do Page'),
        backgroundColor: Colors.green, // Green button preference
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 70,
                    child: TextFormField(
                      controller: textController,
                      decoration: AppInputDecoration("List Item"),
                    ),
                  ),
                  SizedBox(width: 20), // Corrected the SizedBox usage
                  Expanded(
                    flex: 30,
                    child: ElevatedButton(
                      onPressed: addItemToList, // Corrected function reference
                      child: Text(
                        "ADD",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: AppButtonStyle(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 90,
              child: ListView.builder(
                itemCount: toDoList.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      color: Colors.grey[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          5,
                        ), // Apply same border radius to Card
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0), // Padding inside the Card
                        child: Row(
                          children: [
                            Expanded(
                              flex: 80,
                              child: Text(
                                toDoList[index].values.first, // Show task text
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: IconButton(
                                onPressed: () {
                                  deleteItemFromList(index); // Handle delete functionality
                                },
                                icon: Icon(
                                  Icons.delete_forever,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void addItemToList() {
    setState(() {
      if (textController.text.isNotEmpty) {
        toDoList.add({"task": textController.text});
        textController.clear(); // Clear the input after adding
      }
    });
  }

  void deleteItemFromList(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }
}

