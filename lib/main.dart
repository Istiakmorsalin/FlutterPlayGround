import 'package:flutter/material.dart';
import 'strings.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


void main() => runApp(GHFlutterApp());

class GHFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      home: GHFlutter(),
    );
  }
}

var _members = [];
final _biggerFont = const TextStyle(fontSize: 18.0);

class GHFlutterState extends State<GHFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle),
      ),
      body: Text(Strings.appTitle),
    );
  }

  _loadData() async {
  String dataURL = "https://api.github.com/orgs/raywenderlich/members";
  http.Response response = await http.get(dataURL);
  setState(() {
    _members = json.decode(response.body);
  });
 } 
}

class GHFlutter extends StatefulWidget {
  @override
  createState() => GHFlutterState();
}
