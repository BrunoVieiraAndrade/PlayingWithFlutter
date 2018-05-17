import 'package:flutter/material.dart';
import 'package:hello_rectangle/CategoryList.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Meu App"),
          backgroundColor: Colors.green,
        ),
        body: new CategoryList(),
      ),
    ),
  );
}

