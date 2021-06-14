import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed')),
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  bool rememberME = false;

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: Text(
        'Login Page',
      ),
    );
    return Scaffold(
      appBar: appbar,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.purple.shade800,
            Colors.purple.shade500,
            Colors.purple.shade300,
          ], begin: Alignment.topCenter),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Raleway',
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.purple.shade100,
                                  blurRadius: 10,
                                  offset: Offset(0, 10)),
                            ]),
                        child: Column(
                          children: [
                            TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Number or Email'),
                            ),
                            TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Remember Me',
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                          FlatButton(
                            onPressed: null,
                            child: Text(
                              'Forgot Password ?',
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 60),
                        decoration: BoxDecoration(
                          color: Colors.purple.shade900,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: RaisedButton(
                          color: Colors.purple.shade900,
                          elevation: 5,
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text('Continue with Social media'),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RaisedButton(
                            elevation: 5,
                            onPressed: () {},
                            child: Text(
                              'Fackbook',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.blue,
                          ),
                          RaisedButton(
                            elevation: 5,
                            onPressed: () {},
                            child: Text(
                              'Github',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.black,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
