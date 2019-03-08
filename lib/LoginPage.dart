import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginUserPage extends StatefulWidget {
  @override
  _LoginUserPageState createState() => _LoginUserPageState();
}

class _LoginUserPageState extends State<LoginUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          elevation: 0.0,
          title: Text('Login', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 50.0,
              left: MediaQuery.of(context).size.width / 2.8,
              child: Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        width: 3.0,
                        style: BorderStyle.solid)),
                child: Column(
                  children: <Widget>[
                    Text(
                      'LITTLE',
                      style: TextStyle(color: Colors.grey, fontSize: 22.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'COFFEE',
                      style: TextStyle(color: Colors.grey, fontSize: 22.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'SHOP',
                      style: TextStyle(color: Colors.grey, fontSize: 22.0),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 3.0, 15.0, 3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(22.0, 6.0, 22.0, 6.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.green,
                            style: BorderStyle.solid,
                            width: 1.0)),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 45.0,
                      child: TextField(
                        style: TextStyle(fontSize: 20.0, color: Colors.green),
                        decoration: InputDecoration(
                            hintText: "Username",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.green)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(22.0, 5.0, 22.0, 5.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.green,
                            style: BorderStyle.solid,
                            width: 1.0)),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 45.0,
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(fontSize: 20.0, color: Colors.green),
                        decoration: InputDecoration(
                            hintText: "Password",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.green)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 58.0,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pushReplacementNamed(context, "/homepage");
                      },
                      color: Color(0xff0D9F67),
                      child: Text('Sign In',
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.0)),
                    ),
                  ),

                  SizedBox(
                    height: 65.0,
                  ),
                  //Other sign in
                  Text('Sing in with Facebook or Twitter',
                      style: TextStyle(color: Colors.grey, fontSize: 18.0)),
                  SizedBox(
                    height: 45.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 55.0,
                        child: FlatButton(
                          color: Color(0xff3B5998),
                          onPressed: () {},
                          child: IconTheme(
                            data: IconThemeData(color: Colors.white),
                            child: Icon(MdiIcons.facebook),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 55.0,
                        child: FlatButton(
                          color: Color(0xff55ACEE),
                          onPressed: () {},
                          child: IconTheme(
                            data: IconThemeData(color: Colors.white),
                            child: Icon(MdiIcons.twitter),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30.0,)
                ],
              ),
            )
          ],
        ));
  }
}
