import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:example/page/detail.dart';
import 'package:example/page/search.dart';
import 'package:http/http.dart' as http;
import 'package:loader_search_bar/loader_search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Issues',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SearchPage(title: 'Flutter Issues'),
    );
  }
}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class Issue {
//  Issue({
//    this.title,
//    this.avatarUrl,
//  });
//
//  final String title;
//  final String avatarUrl;
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  List<Issue> _issues = <Issue>[];
//
//  @override
//  void initState() {
//    super.initState();
//    _load();
//  }
//
//  Future<void> _load() async {
//    final res = await http.get('https://api.github.com/repositories/31792824/issues');
//    final data = json.decode(res.body);
//    setState(() {
//      final issues = data as List;
//      issues.forEach((dynamic element) {
//        final issue = element as Map;
//        _issues.add(Issue(
//          title: issue['title'] as String,
//          avatarUrl: issue['user']['avatar_url'] as String,
//        ));
//      });
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: SearchBar(
//        defaultBar: AppBar(
//          leading: IconButton(
//              icon: Icon(Icons.menu)
//          ),
//          title: Text('Default app bar title'),
//        ),
//      ),
//      body: ListView.builder(
//          itemBuilder: (BuildContext context, int index) {
//            if (index >= _issues.length) {
//              return null;
//            }
//            final issue = _issues[index];
//            return ListTile(
//              leading: ClipOval(
//                child: Image.network(issue.avatarUrl),
//              ),
//              title: Text(issue.title),
//              onTap: () {
//                _detailPressed(context);
//              },
//            );
//          }),
//    );
//  }
//
//  void _detailPressed(BuildContext context) {
//    Navigator.push(
//      context,
//      MaterialPageRoute(
//        settings: RouteSettings(name: "/detail"),
//        builder: (context) {
//          return DetailPage(title: "tomoki_sun");
//        }));
//  }
//}