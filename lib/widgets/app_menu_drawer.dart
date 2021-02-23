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
        ),
        _itemDrawer(Icon(Icons.home), 'Inicio'),
        _itemDrawer(Icon(Icons.search), 'Buscar'),
        _itemDrawer(Icon(Icons.notification_important), 'Notificações'),
        _itemDrawer(Icon(Icons.shopping_bag), 'Minhas compras'),
        _itemDrawer(Icon(Icons.favorite), 'Favoritos'),
        _itemDrawer(Icon(Icons.account_circle), 'Minha conta'),
        _itemDrawer(Icon(Icons.card_giftcard), 'Mercado Crédito'),
        _itemDrawer(Icon(Icons.bookmarks), 'Assinaturas'),
        _itemDrawer(Icon(Icons.add_shopping_cart), 'Ofertas do dia'),
        _itemDrawer(Icon(Icons.compare_arrows), 'Vender'),
        _itemDrawer(Icon(Icons.done_all), 'Histórico'),
        Divider(
          color: Colors.grey,
        ),
        _itemDrawer(Icon(Icons.grading), 'Categorias'),
        _itemDrawer(Icon(Icons.account_balance), 'Supermercado'),
        _itemDrawer(Icon(Icons.account_balance_wallet), 'Lojas oficiais'),
        Divider(
          color: Colors.grey,
        ),
        _itemDrawer(Icon(Icons.help), 'Ajuda'),
      ],
    );
  }

  Widget _itemDrawer(Icon icon, String text) {
    return ListTile(
      leading: IconTheme(child: icon, data: IconThemeData(color: Colors.black)),
      title: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      onTap: () {},
    );
  }
}
