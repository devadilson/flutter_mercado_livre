import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:mercado_livre/pages/page01.dart';
import 'package:mercado_livre/pages/page02.dart';

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
        ),
        _itemDrawer(context, Page01(), icon: Icon(Icons.home), text: 'Inicio'),
        _itemDrawer(context, Page02(),
            icon: Icon(Icons.search), text: 'Buscar'),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.notification_important),
            text: 'Notificações',
            badge: '5'),
        _itemDrawer(context, Page02(),
            icon: Icon(Icons.shopping_bag), text: 'Minhas compras', badge: '3'),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.favorite), text: 'Favoritos'),
        _itemDrawer(context, Page02(),
            icon: Icon(Icons.account_circle), text: 'Minha conta'),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.card_giftcard), text: 'Mercado Crédito'),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.bookmarks), text: 'Assinaturas'),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.add_shopping_cart), text: 'Ofertas do dia'),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.compare_arrows), text: 'Vender'),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.done_all), text: 'Histórico'),
        Divider(color: Colors.grey),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.grading), text: 'Categorias'),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.account_balance), text: 'Supermercado'),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.account_balance_wallet), text: 'Lojas oficiais'),
        Divider(color: Colors.grey),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.exit_to_app), text: 'Sair'),
        Divider(color: Colors.grey),
        _itemDrawer(context, Page01(), icon: Icon(Icons.help), text: 'Ajuda'),
      ],
    );
  }

  Widget _itemDrawer(context, page,
      {Icon icon, String text, String badge = ''}) {
    return ListTile(
      leading: IconTheme(child: icon, data: IconThemeData(color: Colors.black)),
      title: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      trailing: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(100.0)),
        child: badge != ''
            ? Padding(
                padding: EdgeInsets.fromLTRB(6.0, 2.0, 6.0, 2.0),
                child: Text(
                  badge,
                  style: TextStyle(color: Colors.white),
                ),
              )
            : Text(''),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
    );
  }
}
