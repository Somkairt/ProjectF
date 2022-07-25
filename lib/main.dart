import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//สร้าง widget

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        home: Scaffold(
          appBar: AppBar(
            title: Text("กระบองเพชร By My Home"),
          ),
          body: Center(
            child: Text(
              "เชิญรับน้องๆไปตากแดดกันครับ",
              style: TextStyle(fontSize: 45, color: Colors.brown),
            ),
          ),
        ),
        theme: ThemeData(primarySwatch: Colors.green) //เปลี่ยนสี
        );
  }
}
