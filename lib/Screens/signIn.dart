import 'package:flutter/material.dart';
import 'package:intershipapp/widgets/auth.dart';

class SignIn extends StatelessWidget {
  static const routeName = '/Sign';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Login',
          ),
          backgroundColor: Theme.of(context).accentColor),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/cloud.gif'),
                  fit: BoxFit.fill),
            ),
          ),
          SingleChildScrollView(
            child: Container(
                height: size.height * 0.8,
                width: size.width,
                margin: EdgeInsets.all(40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Auth(),
                      flex: size.width > 600 ? 2 : 1,
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
