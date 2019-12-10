
import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {


  Widget avatarStack = new Stack(
    alignment: const Alignment(0, -0.6),
    children: <Widget>[
      new CircleAvatar(
        backgroundImage: new AssetImage('images/lake.jpg'),
        radius: 100.0,
      ),
      new Container(
        decoration: new BoxDecoration(
          color: Colors.black45,
        ),
        child: new Text(
          'Lake',
          style: new TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: avatarStack,
      ),
    );
  }

}