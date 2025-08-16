import 'package:flutter/material.dart';

InputDecoration AppInputStyle(label){
  return InputDecoration(
   contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    fillColor: Colors.lime,
    border: OutlineInputBorder(),
    labelText: label
  );
}

TextStyle HeadLineText(){
  return TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w800
  );
}

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(22),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4))
    )
  );
}