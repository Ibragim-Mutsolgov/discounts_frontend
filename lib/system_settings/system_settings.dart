import 'package:flutter/material.dart';

class SystemSettings {

  AppBar getAppBar(String text) {
    return AppBar(
      title: Text(text, style: const TextStyle(color: Colors.orange),),
      centerTitle: true,
      backgroundColor: Colors.black,
      iconTheme: const IconThemeData(
          color: Colors.orange
      )
    );
  }

  Drawer getDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                    color: Colors.black
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    verticalDirection: VerticalDirection.down,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Discounts Application', style: TextStyle(color: Colors.orange, fontSize: 17), textAlign: TextAlign.left)
                    ],
                  ),
                )
            ),
            const Divider(color: Colors.black, height: 0),
            getListTile(Icons.home, 'Главная страница', context, "/home"),
            getListTile(Icons.settings, "Параметры", context, "/settings"),
            const Divider(color: Colors.black, height: 0),
            getListTile(Icons.exit_to_app, "Выйти", context, "/exit")
          ],
        )
    );
  }

  ListTile getListTile(IconData icon, String text, BuildContext context, String address) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(text),
      onTap: () {
        Navigator.pop(context);
        Navigator.of(context).pushNamed(address);
      },
    );
  }
}