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
        title: Text('Stay in Shape',
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
            selectedIconTheme: IconThemeData(color: Colors.white, size: 30),
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

                        ///ezt itt meg kell mókolni!!!!!!
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

class _AddTodoPopupCard {}

///////////////////////////////////////////////////////////////////////////////////////////////
class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
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
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.1), BlendMode.dstATop),
                    image: AssetImage('assets/Stay_in_shape_logo2.png')))));
  }
}
