import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void changeColor() {
    isRed = !isRed;
    setState(() {});
  }

  bool isRed = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Color of circle is ${isRed ? "Red" : "Blue"}",
                style: TextStyle(color: isRed ? Colors.red : Colors.blue),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: changeColor,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isRed == true ? Colors.red : Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
