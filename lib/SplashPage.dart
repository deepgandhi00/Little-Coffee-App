import 'package:flutter/material.dart';
import 'dart:async';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() {
    return new SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, "/signupforms");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('assests/splash_screen.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill),
          Container(
            color: Colors.grey.withOpacity(0.5),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 15,
            right: MediaQuery.of(context).size.width / 10,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                      style: BorderStyle.solid)),
              child: Column(
                children: <Widget>[
                  Text(
                    'LITTLE',
                    style: TextStyle(color: Colors.white, fontSize: 28.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'COFFEE',
                    style: TextStyle(color: Colors.white, fontSize: 28.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'SHOP',
                    style: TextStyle(color: Colors.white, fontSize: 28.0),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
