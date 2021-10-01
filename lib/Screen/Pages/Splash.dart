import 'dart:async';

import 'package:demo1/Screen/Pages/Login.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class SplashScr extends StatefulWidget {
  static const routeName = '/splash-screen';
  @override
  _SplashScrState createState() => _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScr())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('images/splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset(
            'images/logo.png',
            height: 120,
            width: 120,
          ),
        ),
      ),
    );
  }
}
