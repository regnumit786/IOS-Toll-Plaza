import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        children: List.generate(choices.length, (index) => Center(
              child: Container(
                padding: EdgeInsets.all(12.0),
                child: GridTile(
                  footer: RaisedButton(
                    child: Text(choices[index].title),
                    onPressed: (){},
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Image.network(choices[index].imgLink),
                  )
          ),
              )),
        ));
  }
}

class Choice {
  final String title;
  final String imgLink;
  const Choice({this.title, this.imgLink});
}

 List<Choice> choices = const<Choice> [
  const Choice(title: 'Charsindor', imgLink: 'https://s.hdnux.com/photos/11/06/34/2385675/9/920x920.jpg'),
  const Choice(title: 'Chittagong', imgLink: 'https://media-eng.dhakatribune.com/uploads/2019/08/web-bangabandhu-bridge-toll-booth-1565418750228.jpg'),
  const Choice(title: 'Manikganj', imgLink: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9_aNqBtm2H0sIRznTQmpxgLgRV-27qADI3w&usqp=CAU')
];