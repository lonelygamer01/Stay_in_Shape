// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'Hero_dialog.dart';

int width = 411;
int height = 683;

class WaterInfoPopupCard extends StatelessWidget {
  /// {@macro add_todo_popup_card}
  const WaterInfoPopupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Hero(
          tag: 'Water info',
          child: Material(
            color: Colors.grey[800],
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Container(
              padding: EdgeInsets.all(10),
              height: height * 0.7,
              width: width * 1,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Text('How much water do YOU NEED?',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: height * 0.03),
                      Text(
                        'Your body is about 60 percent water. \nThats a fact...',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'How much water you need depends on a lot of things and varies from person to person. \nFor adults, the general recommendation is:',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      Text(
                        '- 11.5 cups (2.7 liters) a day for women\n- 15.5 cups (3.7 liters) a day for men.',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                          'This includes fluids from water, beverages like teas and juice, \nand from food. You get an average of 20 percent of your water from the foods you eat.',
                          style: TextStyle(fontSize: 17, color: Colors.white)),
                      SizedBox(height: 10),
                      Text('How much water you need aslo depends on:',
                          style: TextStyle(fontSize: 17, color: Colors.white)),
                      Text(
                        '- Your diet\n- The weather conditions where you live\n- Your environment\n- How active You are\n- Your health condition',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class WaterNotificationPopupCard extends StatefulWidget {
  @override
  _WaterNotificationPopupCardState createState() =>
      _WaterNotificationPopupCardState();
}

class _WaterNotificationPopupCardState
    extends State<WaterNotificationPopupCard> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: EdgeInsets.all(10),
      child: Hero(
        tag: 'Water notification',
        child: Material(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          color: Colors.grey[800],
          elevation: 2,
          child: Container(
            padding: EdgeInsets.all(20),
            height: height * 0.58,
            width: width * 0.97,
            child: Column(
              children: <Widget>[
                Text('Set the interval in you want to recienve notifications:',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: height * 0.063),
                SizedBox(
                  child: Row(children: <Widget>[
                    Text('From: ',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                        )),
                    SizedBox(width: width * 0.03),
                    Text("${selectedTime.hour}:${selectedTime.minute}",
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold)),
                    SizedBox(width: width * 0.15),
                    OutlinedButton(
                      onPressed: () {
                        _selectTime(context);
                      },
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                          backgroundColor: Colors.transparent,
                          side: BorderSide(color: Colors.white, width: 2)),
                      child: Center(
                          child: Text('Set',
                              style: TextStyle(
                                  fontSize: 27,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                    )
                  ]),
                ),
                SizedBox(height: height * 0.063),
                SizedBox(
                  child: Row(children: <Widget>[
                    Text('To: ',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                        )),
                    SizedBox(width: width * 0.11),
                    Text("${selectedTime.hour}:${selectedTime.minute}",
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold)),
                    SizedBox(width: width * 0.15),
                    OutlinedButton(
                      onPressed: () {
                        _selectTime(context);
                      },
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                          backgroundColor: Colors.transparent,
                          side: BorderSide(color: Colors.white, width: 2)),
                      child: Center(
                          child: Text('Set',
                              style: TextStyle(
                                  fontSize: 27,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                    )

                    ///IDE MÉG KELL CUCC!!!!
                  ]),
                ),
                SizedBox(height: height * 0.063),
                SizedBox(
                    child: Row(
                  children: <Widget>[
                    Text('Notifications:',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                        )),
                    SizedBox(width: width * 0.1),
                    Transform.scale(
                        scale: 1.5,
                        child: Switch(
                            activeColor: Colors.white,
                            activeTrackColor: Colors.black,
                            value: status,
                            onChanged: (value) {
                              setState(() {
                                status = value;
                              });
                            }))
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  TimeOfDay selectedTime = TimeOfDay.now();
  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        initialEntryMode: TimePickerEntryMode.dial,
        confirmText: "ok",
        cancelText: "cancel",
        helpText: "Select the time");
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }
}
