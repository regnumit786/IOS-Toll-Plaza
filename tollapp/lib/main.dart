import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tollapp/CharsindorPlaza.dart';
import 'package:tollapp/Chittagong.dart';
import 'package:tollapp/Manikganj.dart';
import 'package:tollapp/Plaza.dart';
import 'package:tollapp/SignUp.dart';

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
                  onPressed: (){
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
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Plaza()));
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
/*

// plaza
class SetWIMPlaza extends StatelessWidget {
  var charsindorText= "Charsindor";
  var chittagongText= "Chittagong";
  var manikganjText= "Manikganj";
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          choices.length,
          (index) => Center(
              child: Container(
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 0),
            child: Container(
              color: Colors.grey,
              child: GridTile(
                footer: Container(
                    margin: EdgeInsets.all(0),
                    alignment: Alignment.center,
                    child: MaterialButton(
                      child: Text(
                        choices[index].title,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),),
                      onPressed: () {
                        if(charsindorText == choices[index].title.toString()) {
                          print('this is $charsindorText');

                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => CharsindorPlaza()));
                        } else if(chittagongText == choices[index].title.toString()){
                          print('this is $chittagongText');

                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => Chittagong()));
                        } else{
                          print('this is $manikganjText');

                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => Manikganj()));
                        }
                      },
                    )),
                child: Image.network(
                  choices[index].imgLink,
                ),
              ),
            ),
          )),
        ));
  }

  void showToast() {
    Fluttertoast.showToast(
        msg: 'This is toast notification',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow);
  }
}

class Choice {
  final String title;
  final String imgLink;

  const Choice({this.title, this.imgLink});
}

List<Choice> choices = const <Choice>[
  const Choice(
      title: 'Charsindor',
      imgLink: 'https://s.hdnux.com/photos/11/06/34/2385675/9/920x920.jpg'),
  const Choice(
      title: 'Chittagong',
      imgLink:
          'https://media-eng.dhakatribune.com/uploads/2019/08/web-bangabandhu-bridge-toll-booth-1565418750228.jpg'),
  const Choice(
      title: 'Manikganj',
      imgLink:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9_aNqBtm2H0sIRznTQmpxgLgRV-27qADI3w&usqp=CAU')
];
*/
