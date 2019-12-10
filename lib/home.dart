

import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //标题栏
    Widget titleSection = new Container(
      padding: EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Container(
                    padding : const EdgeInsets.only(bottom: 8.0),
                    child: new Text(
                      'Oeschinen Lake Campground',
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  new Text(
                    'Kandersteg, Switzerland',
                    style: new TextStyle(
                      color: Colors.grey[500],
                    ),
                  )
                ]),
          ),
          new Icon(
            Icons.star,
            color: Colors.red,
          ),
          new Text('41'),
        ],
      ),
    );

    //按钮栏-单个按钮及其图标
    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new GestureDetector(
            onTap :() {
              Navigator.pushNamed(context, label);
            },
            child: new Icon(icon, color: color),
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                  fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
            ),

          )
        ],
      );
    }

    //标题栏-整体
    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, 'Container'),
          buildButtonColumn(Icons.near_me, 'GridView'),
          buildButtonColumn(Icons.share, 'ListView'),
          buildButtonColumn(Icons.account_box, 'Stack'),
          buildButtonColumn(Icons.ac_unit, 'Card'),
        ],
      ),
    );

    //文本部分
    Widget textArea = new Container(
      padding: const EdgeInsets.all(32.0) ,
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: Text('详情布局'),
      ),
      body: new Column(
        children: <Widget>[
          new Image.asset(
            'images/lake.jpg',
            width: 400.0,
            height:240.0,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textArea,
        ],
      ),
    );
  }

}