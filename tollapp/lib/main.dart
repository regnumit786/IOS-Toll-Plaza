import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tollapp/CharsindorPlaza.dart';
import 'package:tollapp/Chittagong.dart';
import 'package:tollapp/Manikganj.dart';

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
          title: Text('Charsindor Toll Plaza'),
          backgroundColor: Colors.blue,
        ),
        body: SetWIMPlaza(),
      ),
    );
  }
}

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
