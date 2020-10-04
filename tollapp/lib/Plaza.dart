import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'CharsindorPlaza.dart';
import 'Chittagong.dart';
import 'Manikganj.dart';

class Plaza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Regnum Toll Plaza',
        ),
      ),
      body: SetWIMPlaza(),
    );
  }
}

// plaza
class SetWIMPlaza extends StatelessWidget {
  var charsindorText = "Charsindor";
  var chittagongText = "Chittagong";
  var manikganjText = "Manikganj";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 10,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Select WIM Plaza',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 8.0,),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5.0),
              height: 210,
              width: 370,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Column(
                    children: <Widget> [
                      Image(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage('https://s.hdnux.com/photos/11/06/34/2385675/9/920x920.jpg'),
                        height: 140,
                        width: 180,
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          width: 180,
                          child: FlatButton(
                            color: Colors.blue,
                            child: Text(
                              'Charsindor',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                            onPressed: (){

                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: <Widget> [
                      Image(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage('https://media-eng.dhakatribune.com/uploads/2019/08/web-bangabandhu-bridge-toll-booth-1565418750228.jpg'),
                        height: 140,
                        width: 180,
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          width: 180,
                          child: FlatButton(
                            child: Text(
                              'Chittagong',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                              ),
                            ),
                            onPressed: (){

                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.0,),
            Container(
              alignment: Alignment.center,
              height: 205,
              width: 380,
              child: Image(
                fit: BoxFit.fitWidth,
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9_aNqBtm2H0sIRznTQmpxgLgRV-27qADI3w&usqp=CAU'),
                height: 210,
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                alignment: Alignment.center,
                child: FlatButton(
                  child: Text(
                    'Manikganj',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                  ),
                  onPressed: (){

                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
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



/*



GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(
                    choices.length, (index) => Center(
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
                                  ),
                                ),
                                onPressed: () {
                                  if (charsindorText == choices[index].title.toString()) {
                                    print('this is $charsindorText');

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => CharsindorPlaza()));
                                  } else if (chittagongText == choices[index].title.toString()) {
                                    print('this is $chittagongText');

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Chittagong()));
                                  } else {
                                    print('this is $manikganjText');

                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => Manikganj()));
                                  }
                                },
                              )
                          ),
                          child: Image.network(
                            choices[index].imgLink,
                          ),
                        ),
                      ),
                    )),
                  )),


*/


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
