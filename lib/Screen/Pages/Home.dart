import 'dart:async';

// import 'package:carousel_slider/carousel_slider.dart';

import 'package:demo1/Screen/Widgets/HomeWidget.dart';
import 'package:demo1/Screen/Widgets/dra.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
import 'Splash.dart';

class HomeScr extends StatefulWidget {
  static const routeName = '/home-scr';
  HomeScr({Key? key}) : super(key: key);

  @override
  _HomeScrState createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ! DRAWER FOR HOME PAGE
      drawer: MyDrawerList(),
      // ? END DRAWER
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 5),
        ),
        backgroundColor: Colors.red,
        title: Text('Home'),
        actions: <Widget>[
          Icon(
            Icons.shopping_cart,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromRadius(15),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: CupertinoSearchTextField(
                onChanged: (String value) {},
                onSubmitted: (String value) {},
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 3),
                child: Card(
                  child: Container(
                    color: Colors.yellow,
                    height: 30,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 10,
                        right: 10,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.add_location_rounded, size: 20),
                            ),
                            TextSpan(
                                text: " Select Delivery Address",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              Container(height: 180, width: double.infinity, child: SlidData()),
              Divider(),
              // ! PRODUCT LIST HOME PAGE
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Product Data',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(),
                  ProdData(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
