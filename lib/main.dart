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
        home: mypage(),
        theme: ThemeData(primarySwatch: Colors.green) //เปลี่ยนสี
        );
  }
}

class mypage extends StatefulWidget {
  const mypage({Key? key}) : super(key: key);

  @override
  State<mypage> createState() => _mypageState();
}

class _mypageState extends State<mypage> {
  int number = 0; //การสร้างstate

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("กระบองเพชร By My Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("ยิมโน"),
            Text("ยิมโนเชื้อด่าง"),
            Text("ยิมโนด่าง"),
            Text("กดปุ่มเพื่อเพิ่มตัวเลข"),
            Text(
              number.toString(),
              style: TextStyle(fontSize: 60),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
