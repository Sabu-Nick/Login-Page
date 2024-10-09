import 'package:flutter/material.dart';

// Function to define custom text field style with a dynamic label
InputDecoration MyAppTextFieldStyle(String label) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10), // Padding inside the text field
    labelText: label,

    border: OutlineInputBorder(
      borderSide: BorderSide(
        width: 5, // Border width
      ),
    ),
  );
}
