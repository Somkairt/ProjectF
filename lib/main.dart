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
    //ข้อมูลที่เป็นtext widget
    List<Widget> data = [];
    for (var i = 0; i < 10; i++) {
      data.add(Text("รายการที่ $i"));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("กระบองเพชร By My Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: data,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNumber,
        child: Icon(Icons.add),
      ),
    );
  }

  void addNumber() {
    setState(() {
      number++;
    });
  }
}
