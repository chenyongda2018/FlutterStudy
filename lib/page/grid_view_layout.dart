
import 'package:flutter/material.dart';

class GridViewLayout extends StatelessWidget {

  List<Container> _buildGridTileList(int count) {
    return new List<Container>.generate(
        count, (int index) =>
    new Container(child: new Image.asset('images/image${index+1}.jpg')
    ));
  }

  Widget buildGrid() {
    return new GridView.extent(
      maxCrossAxisExtent: 100.0,
      padding: EdgeInsets.all(10.0),
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 1.0,
      children: _buildGridTileList(4),);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: Center(
        child: buildGrid(),
      ),
    );
  }


}

