
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

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
            bottom: MediaQuery.of(context).size.height / 1.65,
            left: MediaQuery.of(context).size.width / 3.15,
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
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.45,
            left: 20.0,
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40.0,
                  height: 65.0,
                  child: MaterialButton(
                    color: Color(0xFF0D9F67),
                    child: Text('Sign Up', style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      Navigator.pushNamed(context, "/singuppage");
                    },
                  ),
                ),
                SizedBox(height: 15.0,),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40.0,
                  height: 65.0,
                  child: MaterialButton(
                    color: Color(0xff3B5998),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconTheme(
                          data: IconThemeData(
                            color: Colors.white
                          ),
                          child: Icon(FontAwesomeIcons.facebook),
                        ),
                        SizedBox(width: 10.0,),
                        Text('Sign up with Facebook', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 35.0,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, "/loginpage");
                  },
                  child: Text('Already have a account? Sign in' ,style: TextStyle(
                    color: Colors.white,
                  ),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
