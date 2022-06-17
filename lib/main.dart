import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.rotate(
        angle: 180 * math.pi / 180,
        child: WaveWidget(
          config: CustomConfig(
            durations: [3500, 19440, 10800, 6000],
            heightPercentages: [0.20, 0.23, 0.25, 0.30],
            gradients: [
              [Color(0xff7C98FD), Color(0xff5046F9)],
              [Color(0xff5046F9), Color(0xff7C98FD)],
              [Color(0xff7C98FD), Color(0xff5046F9)],
              [Color(0xff5046F9), Color(0xff7C98FD)],
            ],
          ),
          size: Size(double.infinity, 500),
        ),
      ),
    );
  }
}
