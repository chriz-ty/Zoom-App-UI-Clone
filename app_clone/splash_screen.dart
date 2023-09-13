import 'package:flutter/material.dart';
import 'dart:async';
import 'package:zoom_app_clone/app_clone/meetings.dart';
void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        body: HomeApp(),
      ),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
          () =>
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => home_screen())),
    );
  }

    Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset("assets/images/Zoom-Logo.png",
              width: 230,
              height: 180,
            ),
          ),
        ],
      );
    }
  }

