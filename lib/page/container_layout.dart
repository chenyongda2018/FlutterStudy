
import 'package:flutter/material.dart';

class ContainerLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var galleryContainer = new Container(
      decoration: new BoxDecoration(
        color : Colors.blueGrey,
      ),

      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Container(
                  decoration: new BoxDecoration(
                    border: new Border.all(
                      width: 10.0,
                      color: Colors.black38,
                    ),
                    borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: new Image.asset('images/image1.jpg'),
                ),
              ),
              new Expanded(
                child: new Container(
                  decoration: new BoxDecoration(
                    border: new Border.all(
                      width: 10.0,
                      color: Colors.black38,
                    ),
                    borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: new Image.asset('images/image2.jpg'),
                ),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Container(
                  decoration: new BoxDecoration(
                    border: new Border.all(
                      width: 10.0,
                      color: Colors.black38,
                    ),
                    borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: new Image.asset('images/image3.jpg'),
                ),
              ),
              new Expanded(
                child: new Container(
                  decoration: new BoxDecoration(
                    border: new Border.all(
                      width: 10.0,
                      color: Colors.black38,
                    ),
                    borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: new Image.asset('images/image4.jpg'),
                ),
              )
            ],
          ),

        ],
      ),
    );

    return new Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Center(
        child: galleryContainer,
      ),
    );
  }

}


