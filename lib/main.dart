import 'package:flutter/material.dart';

void main() => runApp(GHFlutterApp());


class GHFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GHFlutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GHFlutterApp'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
