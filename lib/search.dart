import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:example/detail.dart';
import 'package:http/http.dart' as http;
import 'package:loader_search_bar/loader_search_bar.dart';

class User {
  User({
    this.login,
    this.avatarUrl,
  });

  final String login;
  final String avatarUrl;
}

class SearchPage extends StatefulWidget {
  SearchPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  List<User> _items = <User>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBar(
        defaultBar: AppBar(
          title: Text("Search"),
        ),
        onQueryChanged: (query) {
          _load(query);
        },
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            if (index >= _items.length) {
              return null;
            }
            final item = _items[index];
            return ListTile(
              leading: ClipOval(
                child: Image.network(item.avatarUrl),
              ),
              title: Text(item.login),
              onTap: () {
                // 遷移させる
              },
            );
          }),
    );
  }

  Future<void> _load(String query) async {
    final res = await http.get("https://api.github.com/search/users?q=" + query);
    final data = json.decode(res.body);
    setState(() {
      final items = data["items"] as List;
      final List<User> elements = <User>[];
      items.forEach((dynamic element) {
        final item = element as Map;
        elements.add(User(
          login: item['login'] as String,
          avatarUrl: item['avatar_url'] as String,
        ));
      });
      _items = elements;
    });
  }
}