import 'dart:io';

import 'package:flutter/material.dart';
import 'package:bclock/ui/pages/clock.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('BClock');
    setWindowMinSize(const Size(360, 640));
    setWindowMaxSize(const Size(360, 640));
  }
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
      home: Clock(title: 'BClock'),
    );
  }
}
