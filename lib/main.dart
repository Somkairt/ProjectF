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
            child: Column(
              children: [
                Text("ยิมโน"),
                Text("ยิมโนเชื้อด่าง"),
                Text("ยิมโนด่าง"),
              ],
            ),
          ),
        ),
        theme: ThemeData(primarySwatch: Colors.green) //เปลี่ยนสี
        );
  }
}
