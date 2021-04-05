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
          title: Text("Notifications",
              style: TextStyle(
                fontFamily: "IndieFlower",
              )),
          centerTitle: true,
        ),
        body: Container(
            child: Column(
                children: new List.generate(
                    10,
                    (index) => Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 8.0),
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
                        ))))))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
  // This trailing comma makes auto-formatting nicer for build methods.
}
