import 'package:flutter/cupertino.dart';

/**
 * 自定义StatelessWidget
 *
 */
class Echo extends StatelessWidget {
  final String text;
  final Color backgroundColor;

  const Echo({
    Key key,
    @required this.text,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      ),
    );
  }
}
