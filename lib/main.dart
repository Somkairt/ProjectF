import 'package:flutter/material.dart';
import 'castusmenu.dart';

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
  //กลุ่มข้อมูล
  List<Castusmenu> menu = [
    Castusmenu("ยิมโนเชื้อด่าง", "5", "assets/images/A.jpg"),
    Castusmenu("แอสโตร", "50", "assets/images/B.jpg"),
    Castusmenu("ถังทอง หนามสั้น", "150", "assets/images/C.jpg"),
    Castusmenu("ยิมโนด่าง ", "150", "assets/images/D.jpg"),
    Castusmenu("ยิมโนด่าง แม่พันธ์", "500", "assets/images/E.jpg"),
    Castusmenu("เฟอโรไร้หนาม กอใหญ่", "1500", "assets/images/F.jpg")
  ];

//แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("กระบองเพชร By My Home"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              Castusmenu tus = menu[index];
              return ListTile(
                leading: Image.asset(tus.img),
                title: Text(
                  tus.name,
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("ราคา" + tus.price + "Bath"),
              );
            }));
  }
}
