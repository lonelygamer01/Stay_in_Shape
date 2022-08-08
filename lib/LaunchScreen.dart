// ignore_for_file: avoid_unnecessary_containers

import 'dart:async';
import './Quotepage.dart';
import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Quotepage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 100),
              Container(
                child: Image.asset(
                  'assets/Stay_in_shape_logo2.png',
                  height: 400,
                  width: 400,
                ),
              ),
              const SizedBox(height: 70),
              const SizedBox(
                height: 50,
                width: 50,
                child: CircularProgressIndicator(color: Colors.grey),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black);
  }
}


//MediaQuery.of(context).size.height * 0.405
//MediaQuery.of(context).size.width * 0.6