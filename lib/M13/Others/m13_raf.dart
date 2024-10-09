import 'package:flutter/material.dart';

void main() {
  runApp(MyDynamicListApp());
}

class MyDynamicListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDynamicListView(),
    );
  }
}

class MyDynamicListView extends StatefulWidget {
  MyDynamicListView({super.key});

  List<String> items = [];

  final TextEditingController textController = TextEditingController();

  @override
  State<MyDynamicListView> createState() => _MyDynamicListViewState();
}

class _MyDynamicListViewState extends State<MyDynamicListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Dynamic ListView"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 70,
                  child: TextFormField(
                    controller: widget.textController, // Accessing textController correctly
                    decoration: InputDecoration(
                      labelText: "Enter Your Note",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                Expanded(child: SizedBox(width: 10)),
                Expanded(
                  flex: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.items.add(widget.textController.text);
                        widget.textController.clear(); // Clear the text field after adding
                      });
                    },
                    child: Text(
                      "Add Note",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(18),
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(widget.items[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
