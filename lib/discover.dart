import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  DiscoverPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Discover',
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
