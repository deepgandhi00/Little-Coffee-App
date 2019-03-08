import 'package:flutter/material.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          elevation: 0.0,
          title: Text(
            'HomePage',
            style: TextStyle(color: Colors.grey),
          ),
          backgroundColor: Colors.white,
        ),
        drawer: Drawer(
            child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://deepgandhi.000webhostapp.com/images/coffee_menu_blur.jpg'))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/homepage");
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 10.0),
                  child: ListTile(
                    title: Text('Home',
                        style: TextStyle(color: Colors.white, fontSize: 28.0)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/submenu");
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 10.0),
                  child: ListTile(
                    title: Text('Menu',
                        style: TextStyle(color: Colors.white, fontSize: 28.0)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/favoritespage");
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 10.0),
                  child: ListTile(
                    title: Text('Favorites',
                        style: TextStyle(color: Colors.white, fontSize: 28.0)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/cartpage");
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 10.0),
                  child: ListTile(
                    title: Text('Cart',
                        style: TextStyle(color: Colors.white, fontSize: 28.0)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/product");
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 10.0),
                  child: ListTile(
                    title: Text('Profile',
                        style: TextStyle(color: Colors.white, fontSize: 28.0)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/settingpage");
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 10.0),
                  child: ListTile(
                    title: Text('Setting',
                        style: TextStyle(color: Colors.white, fontSize: 28.0)),
                  ),
                ),
              )
            ],
          ),
        )),
        body: ListView(children: cards));
  }

  List<ImageCards> cards = [
    ImageCards(
        "https://deepgandhi.000webhostapp.com/images/coffee_menu_blur.jpg",
        "Coffee",
        "Lattes, Cappuccinos, macchiatos"),
  ];
}

class ImageCards extends StatelessWidget {
  String imageUrl;
  String name;
  String tagLine;

  ImageCards(this.imageUrl, this.name, this.tagLine);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3.8,
        padding: EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 5.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(color: Colors.white, fontSize: 40.0),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  tagLine,
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
