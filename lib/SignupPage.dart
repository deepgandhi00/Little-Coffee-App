import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String service_url =
      "http://deepgandhi.000webhostapp.com/the_coffee_shop/image_upload_profile.php";

  String image_url =
      "http://deepgandhi.000webhostapp.com/the_coffee_shop/image_upload.php";

      TextEditingController nameController =TextEditingController();
      TextEditingController emailController =TextEditingController();
      TextEditingController pwdController =TextEditingController();

  File file;
  String imgName;
  void _choose() async {
    file = await ImagePicker.pickImage(source: ImageSource.gallery);
  }

  void sendData() async{
    var res = await http.get(service_url+"?fullname='"+nameController.text.toString()+"'&email='"+emailController.text.toString()+"'&pwd='"+pwdController.text.toString()+"'&imgname='"+imgName+"'");
    print(res.body);
  }

  void _uploadProfile() async{
    if (file == null) {
      return;
    } else {
      String base64Image = base64Encode(file.readAsBytesSync());
      String fileName = file.path.split("/").last;

      await http.post(image_url, body: {
        "image": base64Image,
        "name": fileName,
      }).then((res) {
        print(res.body);
        imgName = res.body.toString();
      }).catchError((err) {
        print(err);
      });
    }
  }

  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Sign Up',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Builder(
        builder: (BuildContext context) => Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _choose();
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3.5,
                      child: Align(
                        alignment: Alignment.center,
                        child: file == null
                            ? Icon(Icons.camera)
                            : Image.file(file),
                      ),
                    ),
                  ),

                  //full name widget here
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Theme.of(context).dividerColor),
                        bottom: BorderSide(color: Theme.of(context).dividerColor))),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 70.0,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 12.0),
                        child: TextField(
                          controller: nameController,
                          style: TextStyle(fontSize: 24.0),
                          decoration:
                              InputDecoration(hintText: "Full Name", border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),

                  //email widget here
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Theme.of(context).dividerColor),
                        bottom: BorderSide(color: Theme.of(context).dividerColor))),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 70.0,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 12.0),
                        child: TextField(
                          controller: emailController,
                          style: TextStyle(fontSize: 24.0),
                          decoration:
                              InputDecoration(hintText: "Email", border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),

                  //password widget here
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Theme.of(context).dividerColor),
                        bottom: BorderSide(color: Theme.of(context).dividerColor))),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 70.0,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 12.0),
                        child: TextField(
                          controller: pwdController,
                          style: TextStyle(fontSize: 24.0),
                          decoration:
                              InputDecoration(hintText: "Password", border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),

                  //comfirm password widgrt here
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Theme.of(context).dividerColor),
                        bottom: BorderSide(color: Theme.of(context).dividerColor))),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 70.0,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 12.0),
                        child: TextField(
                          style: TextStyle(fontSize: 24.0),
                          decoration:
                              InputDecoration(hintText: "Confirm Password", border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),

                  //check box and licence here
                  Padding(
                    padding: EdgeInsets.fromLTRB(6.0, 6.0, 6.0, 6.0),
                    child: Row(
                      children: <Widget>[
                        Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            onChanged: (bool value) {
                              setState(() {
                                checked = value;
                              });
                            },
                            value: checked,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text('I agree to Terms & Conditions',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 18.0)),
                      ],
                    ),
                  ),

                  //Sign up button here
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 60.0,
                    child: FlatButton(
                      onPressed: () {
                        if (checked) {
                          _uploadProfile();
                          sendData();
                        } else {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content:
                                Text('Please accept the terms and conditions'),
                          ));
                        }
                      },
                      color: Color(0xff0D9F67),
                      child: Text('Sign Up',
                          style: TextStyle(color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
      ),
    );
  }

  
}
