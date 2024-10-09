import 'package:flutter/material.dart';


InputDecoration AppInputDecoration(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5)
    ),
    labelText: label,
  );
}

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(23),
    backgroundColor: Colors.green,

    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
    )
  );
}


SizedBox SizedBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: child,
    ),
  );
}




















