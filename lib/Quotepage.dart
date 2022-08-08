// ignore_for_file: avoid_print, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import './Startingpage.dart';
import './ListofQuotes.dart';

get randomquote => random_quote;

class Quotepage extends StatefulWidget {
  const Quotepage({Key? key}) : super(key: key);

  @override
  State<Quotepage> createState() => _QuotepageState();
}

class _QuotepageState extends State<Quotepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[
          SizedBox(height: 200),
          Container(
              height: 200,
              child: Text(
                random_quote,
                style: TextStyle(
                    fontSize: 25, color: Colors.white, fontFamily: 'EduTas'),
              )),
          SizedBox(height: 170),
          SizedBox(
            height: 50,
            child: DefaultTextStyle(
              style: TextStyle(fontSize: 17, color: Colors.white),
              child: AnimatedTextKit(
                repeatForever: true,
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Startingpage()));
                },
                animatedTexts: [
                  ScaleAnimatedText(
                    'Tap here to continue',
                    scalingFactor: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
      backgroundColor: Colors.black,
    );
  }
}
