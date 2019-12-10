import 'package:flutter/material.dart';
import 'package:test_flutter/home.dart';
import 'package:test_flutter/page/container_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
      routes: {
        "Container" : (context)=> new ContainerLayout(),
      },
    );
  }
}
