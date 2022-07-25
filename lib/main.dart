import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "My App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("กระบองเพชร By My Home"),
      ),
      body: Text("เชิญชมสินค้าของเรา"),
    ),
  );
  runApp(app);
}
