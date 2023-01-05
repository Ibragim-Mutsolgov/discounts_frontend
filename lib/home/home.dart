import 'package:discounts_frontend/system_settings/system_settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: SystemSettings().getAppBar("DiscountsApp"),
      drawer: SystemSettings().getDrawer(context),
      body: ListView(
        children: [

        ],
      )
    );
  }
}
