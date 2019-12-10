import 'package:flutter/material.dart';
import 'package:test_flutter/home.dart';
import 'package:test_flutter/page/container_layout.dart';
import 'package:test_flutter/page/grid_view_layout.dart';
import 'package:test_flutter/page/list_view_layout.dart';

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
        "GridView" : (context)=> new GridViewLayout(),
        "ListView" : (context)=> new ListViewLayout(),
      },
    );
  }
}
