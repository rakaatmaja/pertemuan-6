import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tabbar(),
    );
  }
}

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Center(
        child: Icon(
          Icons.home,
          size: 60,
          color: Colors.red,
        ),
      ),
      const Center(
        child: Icon(
          Icons.favorite,
          size: 60,
          color: Colors.yellow,
        ),
      ),
      const Center(
        child: Icon(
          Icons.person,
          size: 60,
          color: Colors.green,
        ),
      ),
    ];

    final _kTabs = <Tab>[
      const Tab(
        icon: Icon(Icons.home),
        text: 'Tab1',
      ),
      const Tab(
        icon: Icon(Icons.favorite),
        text: 'Tab2',
      ),
      const Tab(
        icon: Icon(Icons.person),
        text: 'Tab3',
      ),
    ];

    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Syntax6 TabBar'),
          centerTitle: true,
          bottom: TabBar(
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(children: _kTabPages),
      ),
    );
  }
}
