import 'package:flutter/material.dart';
import 'package:aa/onboarding.dart';
import 'package:aa/cart.dart';
import 'package:aa/discover.dart';
import 'package:aa/user.dart';
import 'package:aa/notifications.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'AA Entertainment',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/onboarding',
        routes: <String, WidgetBuilder>{
          '/onboarding': (BuildContext context) => new Onboarding(),
          '/home': (BuildContext context) => new MyHomePage(),
          '/notifications': (BuildContext context) => new NotificationsPage(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  bool _notified = true;

  List<Widget> _widgetOptions = <Widget>[
    Text("Home"),
    DiscoverPage(),
    CartPage(),
    UserPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "AA Entertainment",
            style: TextStyle(
              fontFamily: "IndieFlower",
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                (_notified) ? Icons.notifications_active : Icons.notifications,
                color: (_notified) ? Colors.red : Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _notified = !_notified;
                });
                Navigator.pushNamed(context, '/notifications');
              },
            )
          ],
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
            fontSize: 16,
            fontFamily: "IndieFlower",
          ),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'You',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          onTap: _onItemTapped,
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
