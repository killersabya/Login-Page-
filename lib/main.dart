import 'package:flutter/material.dart';
import 'package:intershipapp/Screens/SlidersScreens.dart';

import 'package:intershipapp/Screens/signIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {SignIn.routeName: (ctx) => SignIn()},
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed')),
      ),
      home: SliderScreen(),
    );
  }
}
