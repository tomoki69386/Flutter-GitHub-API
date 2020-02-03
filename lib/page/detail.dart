import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:example/entity/UserInfo.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key key, this.username}) : super(key: key);

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(username),
      ),
      body: Text(username),
    );
  }
}