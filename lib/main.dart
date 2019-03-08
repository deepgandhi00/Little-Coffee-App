import 'package:flutter/material.dart';
import './SplashPage.dart';
import './SignUpForm.dart';
import './SignupPage.dart';
import './LoginPage.dart';
import './HomePage.dart';
import './SubMenuPage.dart';
import './ProductPage.dart';
import './CartPage.dart';
import './SeetingsPage.dart';
import './FavoritesPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      routes: <String,WidgetBuilder>{
        "/signupforms" : (BuildContext context) => SignUpForm(),
        "/singuppage" : (BuildContext context) => SignUpPage(),
        "/loginpage" : (BuildContext context) => LoginUserPage(),
        "/homepage" : (BuildContext context) => HomePage(),
        "/submenu" : (BuildContext context) => SubMenuPage(1),
        "/product" : (BuildContext context) => ProductPage(),
        "/cartpage" : (BuildContext context) => CartPage(),
        "/settingpage" : (BuildContext context) => SettingsPage(),
        "/favoritespage" : (BuildContext context) => FavoritesPage(),
      },
    );
  }
}