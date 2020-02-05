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
      body: _buildBody()
    );
  }

  Widget _buildBody() {
    return ListView(
      children: <Widget>[
        Container(
          child: CircleAvatar(
            child: Image.network(user.avatarUrl)
          ),
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        ),
        Container(
          child: Text(user.login),
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        )
      ],
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