import 'package:flutter/material.dart';

class CardLayout extends StatelessWidget {
  var personalCard = new SizedBox(
    height: 500,
    child: new Card(
      child: new Column(
        children: <Widget>[
          new Stack(
            alignment: const Alignment(-0.9, 0.9),
            children: <Widget>[
              new Image.asset('images/image3.jpg'),
              new Container(
                child: new Text(
                  'My Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ],
          ),
          new ListTile(
            leading: new Icon(
              Icons.access_alarm,
              color: Colors.blueAccent,
            ),
            title: Text(
              '阳光北里',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30.0),
            ),
            subtitle: Text('北京市海淀区安宁庄东路'),
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(
              Icons.call,
              color: Colors.blueAccent,
            ),
            title: Text(
              '18637864986',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          new ListTile(
            leading: new Icon(
              Icons.account_box,
              color: Colors.blueAccent,
            ),
            title: Text(
              "yanggungbl@gmail.com",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Center(
        child: personalCard,
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
