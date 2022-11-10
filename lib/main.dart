import 'dart:io';

import 'package:flutter/material.dart';
import "dart:math";
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

int cnt = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Random r = Random();
int num = r.nextInt(5);
int num1 = r.nextInt(5);
int num2 = r.nextInt(5);
int num3 = r.nextInt(5);
int num4 = r.nextInt(5);
int num5 = r.nextInt(5);
int num6 = r.nextInt(5);
int num7 = r.nextInt(5);
int num8 = r.nextInt(5);
int num9 = r.nextInt(5);
int num10 = r.nextInt(5);
int num11 = r.nextInt(5);
int num12 = r.nextInt(5);
int num13 = r.nextInt(5);
int num14 = r.nextInt(5);
int num15 = r.nextInt(5);

List pics = [
  'images/blat.webp',
  'images/devil.jpeg',
  'images/pitbull.jpeg',
  'images/pumpkin.jpeg',
  'images/thing.jpeg',
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ifWin(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 30,
            )),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 236, 163, 7),
      ),
      body: GridView.count(crossAxisCount: 4, children: <Widget>[
        Container(
          child: rImage(num),
        ),
        Container(
          child: rImage(num1),
        ),
        Container(
          child: rImage(num2),
        ),
        Container(
          child: rImage(num3),
        ),
        Container(
          child: rImage(num4),
        ),
        Container(
          child: rImage(num5),
        ),
        Container(
          child: rImage(num6),
        ),
        Container(
          child: rImage(num7),
        ),
        Container(
          child: rImage(num8),
        ),
        Container(
          child: rImage(num9),
        ),
        Container(
          child: rImage(num10),
        ),
        Container(
          child: rImage(num11),
        ),
        Container(
          child: rImage(num12),
        ),
        Container(
          child: rImage(num13),
        ),
        Container(
          child: rImage(num14),
        ),
        Container(
          child: rImage(num15),
        ),
      ]),
    );
  }

  Widget rImage(int hello) {
    bool isVisible = true;
    int num = r.nextInt(16);
    if (num <= 4) {
      return (GestureDetector(
          onTap: () {
            setState(() {
              isVisible = false;
              cnt++;
            });
          },
          child: Visibility(
              visible: isVisible,
              child: Image.asset(pics[hello], fit: BoxFit.fill))));
    }
    return Container(color: Colors.grey);
  }

  String ifWin() {
    if (cnt == 10) return "You Won!!";
    return cnt.toString();
  }
}
