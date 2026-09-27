import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Netflix());
  }
}

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 120,
          height: 120,
          child: Stack(
            children: [
              // left bar
              Positioned(
                left: 0,
                child: Container(width: 28, height: 120, color: Colors.red),
              ),
              // middle bar
              Positioned(
                left: 35,
                child: Transform.rotate(
                  angle: -0.5,
                  child: Container(width: 28, height: 130, color: Colors.red),
                ),
              ),
              Positioned(
                left: 75,
                child: Container(width: 28, height: 120, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
