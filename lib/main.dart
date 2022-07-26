import 'dart:html';

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
        theme: ThemeData(primarySwatch: Colors.purple) //เปลี่ยนสี
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

//แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("บัญชีของฉัน",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                height: 150,
                child: Row(
                  children: [
                    Text(
                      "ยอดคงเหลือ",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text("20,000",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
                child: Row(
                  children: [
                    Text(
                      "รายรับ",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text("23,000",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                height: 100,
                child: Row(
                  children: [
                    Text(
                      "รายจ่าย",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text("3,000",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
                child: Row(
                  children: [
                    Text(
                      "ยอดค้างชำระ",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text("400,000",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
