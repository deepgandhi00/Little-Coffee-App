import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool fb = false, twitter = false, google = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffDBC8A8),
          title: Text('Settings'),
          elevation: 0.0,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width / 4,
                  65.0,
                  MediaQuery.of(context).size.width / 4,
                  5.0),
              child: ClipOval(
                  child: Image.network(
                "https://deepgandhi.000webhostapp.com/images/coffee_menu_blur.jpg",
                fit: BoxFit.cover,
                width: 90.0,
                height: 190.0,
              )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 40.0, 0.0, 5.0),
              child: Row(
                children: <Widget>[
                  Text('INFO', style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: BorderDirectional(
                      bottom: BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0),
                      top: BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0))),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 22.0, 15.0, 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Name', style: TextStyle(color: Colors.grey)),
                    Text('Alexandar Karev',
                        style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: BorderDirectional(
                bottom: BorderSide(
                    color: Colors.grey, style: BorderStyle.solid, width: 1.0),
              )),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 22.0, 15.0, 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Title', style: TextStyle(color: Colors.grey)),
                    Text('UI designer', style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: BorderDirectional(
                bottom: BorderSide(
                    color: Colors.grey, style: BorderStyle.solid, width: 1.0),
              )),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 22.0, 15.0, 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Bio', style: TextStyle(color: Colors.grey)),
                    Text('Born in Singapore',
                        style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 40.0, 0.0, 5.0),
              child: Row(
                children: <Widget>[
                  Text('Account', style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: BorderDirectional(
                      bottom: BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0),
                      top: BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0))),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 22.0, 15.0, 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Email', style: TextStyle(color: Colors.grey)),
                    Text('alexandar@five.agency',
                        style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: BorderDirectional(
                bottom: BorderSide(
                    color: Colors.grey, style: BorderStyle.solid, width: 1.0),
              )),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 22.0, 15.0, 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Password', style: TextStyle(color: Colors.grey)),
                    Text('xxxxxxx', style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: BorderDirectional(
                bottom: BorderSide(
                    color: Colors.grey, style: BorderStyle.solid, width: 1.0),
              )),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 22.0, 15.0, 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Location', style: TextStyle(color: Colors.grey)),
                    Text('San Dieago, CA', style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 40.0, 0.0, 5.0),
              child: Row(
                children: <Widget>[
                  Text('CONNECT', style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: BorderDirectional(
                    top: BorderSide(
                        width: 1.0,
                        style: BorderStyle.solid,
                        color: Colors.grey),
                    bottom: BorderSide(
                        width: 1.0,
                        style: BorderStyle.solid,
                        color: Colors.grey)),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 22.0, 15.0, 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Facebook', style: TextStyle(color: Colors.grey)),
                    SizedBox(
                      height: 15.0,
                      child: CupertinoSwitch(
                        value: fb,
                        onChanged: (bool val) {
                          setState(() {
                            fb = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: BorderDirectional(
                    bottom: BorderSide(
                        width: 1.0,
                        style: BorderStyle.solid,
                        color: Colors.grey)),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 22.0, 15.0, 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Twitter', style: TextStyle(color: Colors.grey)),
                    SizedBox(
                      height: 15.0,
                      child: CupertinoSwitch(
                        value: twitter,
                        onChanged: (bool val) {
                          setState(() {
                            twitter = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 22.0, 15.0, 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Google+', style: TextStyle(color: Colors.grey)),
                    SizedBox(
                      height: 15.0,
                      child: CupertinoSwitch(
                        value: google,
                        onChanged: (bool val) {
                          setState(() {
                            google = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
