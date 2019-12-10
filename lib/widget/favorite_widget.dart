import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavoriteState();
  }
}

class _FavoriteState extends State<FavoriteWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 41;

  //状态变化,更新
  void _pressedFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
        _favoriteCount--;
      } else {
        _isFavorite = true;
        _favoriteCount++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Container(
          child: new IconButton(
              icon: _isFavorite
                  ? new Icon(Icons.star)
                  : new Icon(Icons.star_border),
              onPressed: _pressedFavorite,
              color: Colors.red,
          ),
        ),
        new SizedBox(
          width: 18.0,
          child: new Text('$_favoriteCount'),
        )
      ],
    );
  }
}
