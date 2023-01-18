import 'package:DiscountsApp/system_settings/ApiConstraints.dart';
import 'package:flutter/material.dart';

class SystemSettings {
  AppBar getAppBar(String text) {
    return AppBar(
        title: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black));
  }

  Drawer getDrawer(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(color: Colors.orange),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    verticalDirection: VerticalDirection.down,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Discounts Application',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          textAlign: TextAlign.left)
                    ],
                  ),
                )),
            const Divider(color: Colors.black, height: 0),
            getListTile(Icons.home, 'Главная страница', context, "/home"),
            getDataForAdmin(context),
            const Divider(color: Colors.black, height: 0),
            getListTile(Icons.exit_to_app, "Выйти", context, "/exit")
          ],
        ));
  }

  getDataForAdmin(BuildContext context) {
    if (ApiConstraints.auth == true) {
      return Column(children: [
        getListTile(Icons.people, "Клиенты", context, "/settings"),
        getListTile(Icons.add_box_sharp, "Заявки", context, "/settings"),
        getListTile(Icons.settings, "Параметры", context, "/settings"),
      ]);
    }
    return getListTile(Icons.settings, "Параметры", context, "/settings");
  }

  ListTile getListTile(
      IconData icon, String text, BuildContext context, String address) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        text,
        style: const TextStyle(fontSize: 17),
      ),
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(context, address, ModalRoute.withName(address));
      },
    );
  }
}