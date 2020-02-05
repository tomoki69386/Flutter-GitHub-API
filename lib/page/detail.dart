import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:example/entity/User.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key key, this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Platform.isIOS ? _makeiOS() : _makeAndroid(),
      body: ListTile(
        leading: CircleAvatar(
          child: Image.network(user.avatarUrl),
        ),
        title: Text(user.login),
      ),
    );
  }

  Widget _makeiOS() {
    return CupertinoNavigationBar(
      middle: Text(user.login),
      previousPageTitle: "戻る",
    );
  }

  Widget _makeAndroid() {
    return AppBar(
      title: Text(user.login),
    );
  }
}