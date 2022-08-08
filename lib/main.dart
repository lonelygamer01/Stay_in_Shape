import 'package:flutter/material.dart';
import './LaunchScreen.dart';

void main() {
  runApp(const Loading());
}

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LaunchScreen(),
    );
  }
}
