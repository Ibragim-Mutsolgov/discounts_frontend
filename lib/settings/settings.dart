import 'package:flutter/material.dart';

import '../system_settings/system_settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: SystemSettings().getAppBar("Параметры"),
      drawer: SystemSettings().getDrawer(context),
      body: ListView(
        children: const [
        ],
      )
    );
  }
}
