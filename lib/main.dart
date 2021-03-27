import 'package:flutter/material.dart';
import 'package:bclock/ui/pages/clock.dart';

void main() {
  runApp(
    BClock(),
  );
}

class BClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BClock',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      home: HomePage(title: 'BClock'),
    );
  }
}
