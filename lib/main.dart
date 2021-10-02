import 'package:demo1/Bakcend/Respo/Res.dart';
import 'package:demo1/Screen/Pages/Splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MyPage/Qty.dart';
import 'Screen/Pages/Home.dart';
import 'Screen/Pages/Login.dart';
import 'Screen/Pages/Register.dart';
import 'Screen/Widgets/HomeWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => ProductDataRespo()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: QtyField(),
        routes: {
          SplashScr.routeName: (ctx) => SplashScr(),
          HomeScr.routeName: (ctx) => HomeScr(),
          LoginScr.routeName: (ctx) => LoginScr(),
          RegisterScr.routeName: (ctx) => RegisterScr(),
        },
      ),
    );
  }
}
