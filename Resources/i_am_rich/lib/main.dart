import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen[200],
        appBar: AppBar(                       
          title: const Text("I Am Rich"),     
          backgroundColor: Colors.red[800],
        ),
        body: const Center(                               
          child: Image(
            image: AssetImage('assets/diamond.jpg'),
          ),
        ),
      ),
    ),
  );
}
