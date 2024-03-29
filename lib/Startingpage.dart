// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';
import 'Hero_dialog.dart';
import 'Popup_and_Notification.dart';

int width = 411;
int height = 683;

class Startingpage extends StatefulWidget {
  const Startingpage({Key? key}) : super(key: key);

  @override
  State<Startingpage> createState() => _StartingpageState();
}

class _StartingpageState extends State<Startingpage> {
  int selectedindex = 0;
  final _pageOptions = [
    HomeScreen(),
    DietScreen(),
    WorkoutScreen(),
    HelpScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    void selectScreen(int index) {
      setState(() {
        selectedindex = index;
      });
    }

    return Scaffold(
      body: _pageOptions[selectedindex],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        toolbarHeight: 50,
        centerTitle: true,
        title: Text('Stay In Shape',
            style: TextStyle(fontSize: 25, color: Colors.white)),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          child: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: selectScreen,
            backgroundColor: Colors.transparent,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  backgroundColor: Colors.grey[800],
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.fastfood),
                  backgroundColor: Colors.grey[800],
                  label: 'Diet'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart),
                  backgroundColor: Colors.grey[800],
                  label: 'Workout'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.help_outline),
                  backgroundColor: Colors.grey[800],
                  label: 'Help')
            ],
            selectedIconTheme: IconThemeData(color: Colors.blue[400], size: 30),
            unselectedItemColor: Colors.black,
            showUnselectedLabels: false,
            selectedFontSize: 15,
            type: BottomNavigationBarType.shifting,
          )),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 600,
            child: SingleChildScrollView(
                child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 200),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            primary: Colors.grey,
                            backgroundColor: Colors.transparent,
                            side: BorderSide(color: Colors.grey, width: 5)),
                        onPressed: () {},
                        child: Center(
                            child: Row(
                          children: <Widget>[
                            SizedBox(width: 35),
                            Icon(Icons.person, color: Colors.grey, size: 30),
                            SizedBox(width: 10),
                            Text('Profile',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 30))
                          ],
                        ))),
                  ),
                  SizedBox(height: 50),
                  FlatButton(
                      onPressed: () {},
                      child: Text('testbutton',
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                  SizedBox(height: 50),
                  FlatButton(
                      onPressed: () {},
                      child: Text('testbutton',
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                  SizedBox(height: 50),
                  FlatButton(
                      onPressed: () {},
                      child: Text('testbutton',
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                  SizedBox(height: 50),
                  FlatButton(
                      onPressed: () {},
                      child: Text('testbutton',
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                ],
              ),
            )),
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.1), BlendMode.dstATop),
                    image: AssetImage('assets/Stay_in_shape_logo2.png')))));
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////
class DietScreen extends StatefulWidget {
  const DietScreen({Key? key}) : super(key: key);

  @override
  State<DietScreen> createState() => _DietScreenState();
}

class _DietScreenState extends State<DietScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
          child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 200),
            SizedBox(
              height: 50,
              width: 250,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      primary: Colors.grey,
                      backgroundColor: Colors.transparent,
                      side: BorderSide(color: Colors.grey, width: 5)),
                  onPressed: () {
                    Navigator.of(context).push(HeroDialogRoute(
                        builder: (context) => WaterInfoPopupCard(),
                        settings: RouteSettings()));
                  },
                  child: Center(
                      child: Row(
                    children: <Widget>[
                      Icon(Icons.water_drop, color: Colors.grey, size: 30),
                      SizedBox(width: 10),
                      Text('Water intake',
                          style: TextStyle(color: Colors.grey, fontSize: 30))
                    ],
                  ))),
            ),
            SizedBox(height: 50),
            SizedBox(
              height: 50,
              width: 250,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      primary: Colors.grey,
                      backgroundColor: Colors.transparent,
                      side: BorderSide(color: Colors.grey, width: 5)),
                  onPressed: () {
                    Navigator.of(context).push(HeroDialogRoute(
                        builder: (context) => WaterNotificationPopupCard(),
                        settings: RouteSettings()));
                  },
                  child: Center(
                      child: Row(
                    children: <Widget>[
                      Icon(Icons.notifications_none,
                          color: Colors.grey, size: 30),
                      SizedBox(width: 10),
                      Text('Notification',
                          style: TextStyle(color: Colors.grey, fontSize: 30))
                    ],
                  ))),
            ),
            SizedBox(height: 50),
            SizedBox(
              height: 50,
              width: 250,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      primary: Colors.grey,
                      backgroundColor: Colors.transparent,
                      side: BorderSide(color: Colors.grey, width: 5)),
                  onPressed: () {
                    Navigator.of(context).push(HeroDialogRoute(
                        builder: (context) => BMI_calc(),
                        settings: RouteSettings()));
                  },
                  child: Center(
                      child: Row(
                    children: <Widget>[
                      Icon(Icons.scale_outlined, color: Colors.grey, size: 30),
                      SizedBox(width: 10),
                      Text('BMI calc.',
                          style: TextStyle(color: Colors.grey, fontSize: 30))
                    ],
                  ))),
            ),
            SizedBox(height: 50),
            FlatButton(
                onPressed: () {},
                child: Text('testbutton',
                    style: TextStyle(color: Colors.white, fontSize: 20))),
            SizedBox(height: 50),
          ],
        ),
      )),
      height: 600,
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1), BlendMode.dstATop),
              image: AssetImage('assets/Stay_in_shape_logo2.png'))),
    ));
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////
class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({Key? key}) : super(key: key);
  Widget menu_widgets(
      BuildContext context, String menu_text, IconData icon_type) {
    return SizedBox(
      height: 180,
      width: 180,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              primary: Colors.grey,
              backgroundColor: Colors.transparent,
              side: BorderSide(color: Colors.grey, width: 5)),
          onPressed: () {},
          child: Center(
              child: Column(
            children: <Widget>[
              Icon(icon_type, color: Colors.grey, size: 30),
              SizedBox(width: 10),
              Text(menu_text,
                  style: TextStyle(color: Colors.grey, fontSize: 30))
            ],
          ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            padding: EdgeInsets.all(20),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        menu_widgets(context, "Szia", Icons.back_hand_outlined),
                        SizedBox(width: 10),
                        menu_widgets(context, "Szia", Icons.back_hand_outlined),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        menu_widgets(context, "Szia", Icons.back_hand_outlined),
                        SizedBox(width: 10),
                        menu_widgets(context, "Szia", Icons.back_hand_outlined),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        menu_widgets(context, "Szia", Icons.back_hand_outlined),
                        SizedBox(width: 10),
                        menu_widgets(context, "Szia", Icons.back_hand_outlined),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        menu_widgets(context, "Szia", Icons.back_hand_outlined),
                        SizedBox(width: 10),
                        menu_widgets(context, "Szia", Icons.back_hand_outlined),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        menu_widgets(context, "Szia", Icons.back_hand_outlined),
                        SizedBox(width: 10),
                        menu_widgets(context, "Szia", Icons.back_hand_outlined),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        menu_widgets(context, "Szia", Icons.back_hand_outlined),
                        SizedBox(width: 10),
                        menu_widgets(context, "Szia", Icons.back_hand_outlined),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.1), BlendMode.dstATop),
                    image: AssetImage('assets/Stay_in_shape_logo2.png')))));
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////
class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            padding: EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.all(5),
              width: 368,
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  SizedBox(height: 10),
                  Text("Information about the app",
                      style: TextStyle(color: Colors.blue[400], fontSize: 27)),
                  SizedBox(height: 20),
                  Text(
                      "Dear User, first of all I want to thank you for downloading my app. I'have put so much effort to it since I would like to learn how to develop an app...\nSo if you have any idea to make this app better or just noticed a bug let me know in the given e-mail address.\nFeedbacks are welcome! Have a great time and don't forget to Stay In Shape!",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  SizedBox(height: 20),
                  Text("What can You use it for?                    ",
                      style: TextStyle(color: Colors.blue[400], fontSize: 23)),
                  Text(
                      "Stay In Shape as the name shows, this is a little helper in Your phone which covers the basic features what a fitness app and a health app can do.",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text(
                      "igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg igen ez egy teszt szöveg ",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
              ),
              /*decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(20)),*/
            ),
            height: 600,
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.1), BlendMode.dstATop),
                    image: AssetImage('assets/Stay_in_shape_logo2.png')))));
  }
}
