import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tollapp/CharsindorPlaza.dart';
import 'package:tollapp/Chittagong.dart';
import 'package:tollapp/LoadExalFile.dart';
import 'package:tollapp/Manikganj.dart';
import 'package:tollapp/Plaza.dart';
import 'package:tollapp/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Regnum Toll Plaza'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: LoginPage(),
      ),
    );
  }
}


class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var admin = "akijmia.cse@gmail.com";

  void showAdminToast() {
    Fluttertoast.showToast(
        msg: 'Admin Panel',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow
    );
  }
  void textEmptyToast() {
    Fluttertoast.showToast(
        msg: 'Please Enter your Email',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow
    );
  }
  void passwordEmptyToast() {
    Fluttertoast.showToast(
        msg: 'Please Enter your Password al least 6 char',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow
    );
  }
  void ErrorToast() {
    Fluttertoast.showToast(
        msg: 'Please try again latter',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow
    );
  }
  void UserToast() {
    Fluttertoast.showToast(
        msg: 'User Panel',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow
    );
  }

        @override
        Widget build(BuildContext context) {
          return Scaffold(
              body: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Regnum Toll Plaza',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 30),
                          )
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'User Name',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                      ),
                      FlatButton(

                        onPressed: () {
                          //forgot password screen
                        },
                        textColor: Colors.blue,
                        child: Text('Forgot Password'),
                      ),
                      Container(
                          height: 50,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Colors.blue,
                            child: Text('Login'),
                            onPressed: () {
                              print(nameController.text);
                              print(passwordController.text);
                              if(nameController.text.isEmpty && passwordController.text.isEmpty){
                                ErrorToast();
                              } else if (nameController.text.isEmpty) {
                                textEmptyToast();
                              } else if (passwordController.text.length <5) {
                                passwordEmptyToast();
                              } else if (nameController.text == admin) {
                                final FirebaseAuth auth= FirebaseAuth.instance;
                                showAdminToast();
                                Navigator.push(
                                    context, MaterialPageRoute(
                                    builder: (context) => LoadExalFile()));
                              } else {

                                UserToast();
                                Navigator.push(
                                    context, MaterialPageRoute(
                                    builder: (context) => Plaza()));
                              }
                            },
                          )),
                      Container(
                          child: Row(
                            children: <Widget>[
                              Text('Does not have account?'),
                              FlatButton(
                                textColor: Colors.blue,
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(fontSize: 20),
                                ),
                                onPressed: () {
                                  //signup screen
                                  Navigator.push(
                                      context, MaterialPageRoute(
                                      builder: (context) => SignUp()));
                                },
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ))
                    ],
                  )
              )
          );
        }
}