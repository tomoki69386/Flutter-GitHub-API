import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:example/entity/User.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key key, this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.login),
      ),
      body: ListTile(
        leading: CircleAvatar(
          child: Image.network(user.avatarUrl),
        ),
        title: Text(user.login),
      ),
    );
  }
}