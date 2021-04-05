import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  NotificationsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              print('Card tapped.');
            },
            child: const SizedBox(
              width: double.infinity,
              height: 50,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('This is a notification card'),
              ),
            ),
          ))),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  // This trailing comma makes auto-formatting nicer for build methods.
}
