// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'Hero_dialog.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
  bool status = false;
  String timefrom = '-- : --';
  String timeto = '-- : --';

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
                    Container(
                      width: width * 0.2866,
                      decoration: BoxDecoration(color: Colors.grey[800]),
                      child: Center(
                          child: Text(
                              "${selectedTimefrom.hour}:${selectedTimefrom.minute}",
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.bold))),
                    ),
                    SizedBox(width: width * 0.04),
                    OutlinedButton(
                      onPressed: () {
                        selectTimefrom(context);
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
                SizedBox(height: height * 0.033),
                SizedBox(
                  child: Row(children: <Widget>[
                    Text('To: ',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                        )),
                    SizedBox(width: width * 0.11),
                    Container(
                      width: width * 0.2866,
                      decoration: BoxDecoration(color: Colors.grey[800]),
                      child: Center(
                          child: Text(
                              "${selectedTimeto.hour}:${selectedTimeto.minute}",
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.bold))),
                    ),
                    SizedBox(width: width * 0.04),
                    OutlinedButton(
                      onPressed: () {
                        selectTimeto(context);
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
                SizedBox(height: height * 0.01),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Colors.white,
                        backgroundColor: Colors.blue[400],
                        side: BorderSide(color: Colors.white, width: 2)),
                    onPressed: () {},
                    child: Center(
                        child: Text('Save',
                            style: TextStyle(
                                fontSize: 27,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)))),
                SizedBox(height: height * 0.02),
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
                            activeTrackColor: Colors.blue[400],
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

  TimeOfDay selectedTimefrom = TimeOfDay.now();
  selectTimefrom(BuildContext context) async {
    final TimeOfDay? timeOfDayfrom = await showTimePicker(
        context: context,
        initialTime: selectedTimefrom,
        initialEntryMode: TimePickerEntryMode.dial,
        confirmText: "ok",
        cancelText: "cancel",
        helpText: "Select the time");
    if (timeOfDayfrom != null && timeOfDayfrom != selectedTimefrom) {
      setState(() {
        selectedTimefrom = timeOfDayfrom;
      });
    }
  }

  TimeOfDay selectedTimeto = TimeOfDay.now();
  selectTimeto(BuildContext context) async {
    final TimeOfDay? timeOfDayto = await showTimePicker(
        context: context,
        initialTime: selectedTimeto,
        initialEntryMode: TimePickerEntryMode.dial,
        confirmText: "ok",
        cancelText: "cancel",
        helpText: "Select the time");
    if (timeOfDayto != null && timeOfDayto != selectedTimeto) {
      setState(() {
        selectedTimeto = timeOfDayto;
      });
    }
  }
}

class BMI_calc extends StatefulWidget {
  const BMI_calc({Key? key}) : super(key: key);

  @override
  State<BMI_calc> createState() => _BMI_calcState();
}

enum Gender { male, female }

enum Act { little_or_no, one_or_three, four_or_five, daily, extra_or_physical }

class _BMI_calcState extends State<BMI_calc> {
  calculate(context) {
    if (_gender == Gender.male) {
      ibw = (50 + (0.91 * (current_height - 152.4))).toStringAsFixed(1);
      bmr = 66.47 +
          (13.75 * current_weight) +
          (5.003 * current_height) -
          (6.755 * current_age);
      if (_activity == Act.little_or_no) {
        cal = (bmr * 1.2).toStringAsFixed(1);
      }
      if (_activity == Act.one_or_three) {
        cal = (bmr * 1.3).toStringAsFixed(1);
      }
      if (_activity == Act.four_or_five) {
        cal = (bmr * 1.5).toStringAsFixed(1);
      }
      if (_activity == Act.daily) {
        cal = (bmr * 1.7).toStringAsFixed(1);
      }
      if (_activity == Act.extra_or_physical) {
        cal = (bmr * 1.8).toStringAsFixed(1);
      }
      Alert(
              context: context,
              title: "Your results:",
              desc: "Ideal bodyweight: $ibw\nDaily calorie intake: $cal")
          .show();
    }
    if (_gender == Gender.female) {
      ibw = (45.5 + (0.91 * (current_height - 152.4))).toStringAsFixed(1);
      bmr = 65.51 +
          (9.563 * current_weight) +
          (1.850 * current_height) -
          (4.676 * current_age);
      if (_activity == Act.little_or_no) {
        cal = (bmr * 1.2).toStringAsFixed(1);
      }
      if (_activity == Act.one_or_three) {
        cal = (bmr * 1.3).toStringAsFixed(1);
      }
      if (_activity == Act.four_or_five) {
        cal = (bmr * 1.5).toStringAsFixed(1);
      }
      if (_activity == Act.daily) {
        cal = (bmr * 1.7).toStringAsFixed(1);
      }
      if (_activity == Act.extra_or_physical) {
        cal = (bmr * 1.8).toStringAsFixed(1);
      }
      Alert(
              context: context,
              title: "Your results:",
              desc: "Ideal bodyweight: $ibw\nDaily calorie intake: $cal")
          .show();
    }
  }

  int current_age = 15;
  int current_height = 150;
  int current_weight = 50;
  late double bmi_index;
  late String ibw;
  late double bmr;
  late String cal;
  late double prot;
  Gender? _gender = Gender.male;
  Act? _activity = Act.little_or_no;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Hero(
          tag: 'BMI',
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
                child: Column(children: [
                  Text("BMI, IBW, calorie & protein\ncalculator",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Expanded(
                      child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 40),
                        Text("Age",
                            style:
                                TextStyle(fontSize: 22, color: Colors.white)),
                        SizedBox(height: 20),
                        NumberPicker(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.white),
                          ),
                          axis: Axis.horizontal,
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                          selectedTextStyle:
                              TextStyle(color: Colors.blue[400], fontSize: 28),
                          minValue: 2,
                          maxValue: 120,
                          value: current_age,
                          onChanged: (value) =>
                              setState(() => current_age = value),
                        ),
                        SizedBox(height: 20),
                        Text("Gender",
                            style:
                                TextStyle(fontSize: 22, color: Colors.white)),
                        SizedBox(height: 6),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 80),
                            Radio<Gender>(
                              value: Gender.male,
                              groupValue: _gender,
                              onChanged: (Gender? value) {
                                setState(() {
                                  _gender = value;
                                });
                              },
                            ),
                            Text("Male",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            SizedBox(width: 10),
                            Radio<Gender>(
                              value: Gender.female,
                              groupValue: _gender,
                              onChanged: (Gender? value) {
                                setState(() {
                                  _gender = value;
                                });
                              },
                            ),
                            Text("Female",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text("Height",
                            style:
                                TextStyle(fontSize: 22, color: Colors.white)),
                        SizedBox(height: 20),
                        NumberPicker(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.white),
                          ),
                          axis: Axis.horizontal,
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                          selectedTextStyle:
                              TextStyle(color: Colors.blue[400], fontSize: 28),
                          minValue: 100,
                          maxValue: 210,
                          value: current_height,
                          onChanged: (value) =>
                              setState(() => current_height = value),
                        ),
                        SizedBox(height: 20),
                        Text("Weight",
                            style:
                                TextStyle(fontSize: 22, color: Colors.white)),
                        SizedBox(height: 20),
                        NumberPicker(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.white),
                          ),
                          axis: Axis.horizontal,
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                          selectedTextStyle:
                              TextStyle(color: Colors.blue[400], fontSize: 28),
                          minValue: 20,
                          maxValue: 150,
                          value: current_weight,
                          onChanged: (value) =>
                              setState(() => current_weight = value),
                        ),
                        SizedBox(height: 20),
                        Text("Lifestyle",
                            style:
                                TextStyle(fontSize: 22, color: Colors.white)),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Radio<Act>(
                              value: Act.little_or_no,
                              groupValue: _activity,
                              onChanged: (Act? value) {
                                setState(() {
                                  _activity = value;
                                });
                              },
                            ),
                            Text("little or no exercise",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ],
                        ),
                        Row(children: [
                          Radio<Act>(
                            value: Act.one_or_three,
                            groupValue: _activity,
                            onChanged: (Act? value) {
                              setState(() {
                                _activity = value;
                              });
                            },
                          ),
                          Text("exercise 1-3 times/week",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ]),
                        Row(children: [
                          Radio<Act>(
                            value: Act.four_or_five,
                            groupValue: _activity,
                            onChanged: (Act? value) {
                              setState(() {
                                _activity = value;
                              });
                            },
                          ),
                          Text("exercise 4-5 times/week",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ]),
                        Row(children: [
                          Radio<Act>(
                            value: Act.daily,
                            groupValue: _activity,
                            onChanged: (Act? value) {
                              setState(() {
                                _activity = value;
                              });
                            },
                          ),
                          Text("exercise daily",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ]),
                        Row(children: [
                          Radio<Act>(
                            value: Act.extra_or_physical,
                            groupValue: _activity,
                            onChanged: (Act? value) {
                              setState(() {
                                _activity = value;
                              });
                            },
                          ),
                          Text("heavy exercise or physical worker",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ]),
                      ],
                    ),
                  )),
                  SizedBox(height: 10),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                          backgroundColor: Colors.blue[400],
                          side: BorderSide(color: Colors.white, width: 2)),
                      onPressed: () => calculate(context),
                      child: Center(
                          child: Text('Calculate',
                              style: TextStyle(
                                  fontSize: 27,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)))),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
