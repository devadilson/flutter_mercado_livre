import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppMenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 120.0,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 241, 89, 1),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  child: CircleAvatar(
                    child: Icon(Icons.people),
                    backgroundColor: Color.fromRGBO(255, 241, 89, 1),
                    foregroundColor: Colors.black,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(color: Colors.grey, width: 4.0)),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Olá, Adilson',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Text(
                        'Nível 3 - Mercado Pontos',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}