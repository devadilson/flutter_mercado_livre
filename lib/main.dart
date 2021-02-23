import 'package:flutter/material.dart';

import 'package:mercado_livre/pages/cart.dart';
import 'package:mercado_livre/pages/home.dart';
import 'package:mercado_livre/widgets/app_bar_search.dart';
import 'package:mercado_livre/widgets/app_menu_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mercado Livre',
      home: new HomeMyApp(),
    );
  }
}

class HomeMyApp extends StatefulWidget {
  @override
  _HomeMyAppState createState() => _HomeMyAppState();
}

class _HomeMyAppState extends State<HomeMyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: AppMenuDrawer(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Mercado Livre',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromRGBO(255, 241, 89, 1),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cart(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: AppSearchBar());
            },
          )
        ],
      ),
      body: Center(
        child: Home(),
      ),
    );
  }
}
