
import 'package:flutter/material.dart';

class ListViewLayout extends StatelessWidget {

  List<Widget> listWidget = <Widget>[
    new ListTile(
      title: Text(
        'Java',
        style: new TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.0
        ) ,
      ),
      subtitle: Text('N0.1 language'),
      leading: new Icon(
        Icons.ac_unit,
        color: Colors.blueAccent,
      ),
    ),
    new ListTile(
      title: Text(
        'C++',
        style: new TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.0
        ) ,
      ),
      subtitle: Text('N0.2 language'),
      leading: new Icon(
        Icons.access_alarm,
        color: Colors.blueAccent,
      ),
    ),
    new ListTile(
      title: Text(
        'C',
        style: new TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.0
        ) ,
      ),
      subtitle: Text('N0.3 language'),
      leading: new Icon(
        Icons.accessibility,
        color: Colors.blueAccent,
      ),
    ),
    new ListTile(
      title: Text(
        'Python',
        style: new TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.0
        ) ,
      ),
      subtitle: Text('N0.4 language'),
      leading: new Icon(
        Icons.account_box,
        color: Colors.blueAccent,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Center(
        child: new ListView(
          children: listWidget,
        ),
      ),
    );
  }

}