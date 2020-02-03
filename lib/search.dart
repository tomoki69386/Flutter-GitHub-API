import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:example/detail.dart';
import 'package:http/http.dart' as http;
import 'package:loader_search_bar/loader_search_bar.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBar(
        defaultBar: AppBar(
          title: Text("Search"),
        ),
        onQueryChanged: (query) {
          print(query);
        },
      ),
    );
  }
}