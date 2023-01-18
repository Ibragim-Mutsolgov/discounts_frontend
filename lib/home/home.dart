import 'package:DiscountsApp/system_settings/system_settings.dart';
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
        body: ListView(children: [
          Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Column(
                              children: [
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Text(
                                    "Ваша скидка:",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: const Text(
                                    "15 %",
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.black),
                                  ),
                                )
                              ],
                            )
                          ),
                        )))
        ]));
  }
}
