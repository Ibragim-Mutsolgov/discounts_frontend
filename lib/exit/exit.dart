import 'package:flutter/material.dart';

import '../home/home.dart';
import '../system_settings/system_settings.dart';

class ExitPage extends StatefulWidget {
  const ExitPage({Key? key}) : super(key: key);

  @override
  State<ExitPage> createState() => _ExitPageState();
}

class _ExitPageState extends State<ExitPage> {
  GlobalKey<FormState> key = GlobalKey();

  String username = "";

  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 100, 0, 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Авторизация",
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Form(
                          key: key,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: SizedBox(
                                  width: 400,
                                  child: TextFormField(
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.name,
                                    validator: (String? inValue) {
                                      if(inValue!.isEmpty) {
                                        return "Пожалуйста, введите логин";
                                      }
                                      return null;
                                    },
                                    onSaved: (String? inValue) {
                                      username = inValue!;
                                    },
                                    textAlign: TextAlign.center,
                                    decoration:  InputDecoration(
                                      fillColor: Colors.black,
                                      hintText: "Логин",
                                      labelText: "Логин",
                                      labelStyle: const TextStyle(color: Colors.black, fontSize: 18),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.circular(7.0),
                                      ),
                                      focusedBorder:OutlineInputBorder(
                                        borderSide: const BorderSide(color: Colors.black, width: 2.0),
                                        borderRadius: BorderRadius.circular(7.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.zero,
                                child: SizedBox(
                                    width: 400,
                                    child: TextFormField(
                                      cursorColor: Colors.black,
                                      obscureText: true,
                                      validator: (String? inValue) {
                                        if(inValue!.isEmpty) {
                                          return "Пожалуйста, введите пароль";
                                        }
                                        return null;
                                      },
                                      onSaved: (String? inValue) {
                                        password = inValue!;
                                      },
                                      textAlign: TextAlign.center,
                                      decoration:  InputDecoration(
                                        hintText: "Пароль",
                                        labelText: "Пароль",
                                        labelStyle: const TextStyle(color: Colors.black, fontSize: 18),
                                        border: OutlineInputBorder(
                                          borderSide: const BorderSide(color: Colors.black),
                                          borderRadius: BorderRadius.circular(7.0),
                                        ),
                                        focusedBorder:OutlineInputBorder(
                                          borderSide: const BorderSide(color: Colors.black, width: 2.0),
                                          borderRadius: BorderRadius.circular(7.0),
                                        ),
                                      ),
                                    )
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black,
                                        shadowColor: Colors.black,
                                        minimumSize: const Size(407, 50)
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                                    },
                                    child: const Text("Войти", style: TextStyle(color: Colors.orange, fontSize: 18),),
                                  )
                              ),
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black,
                                        shadowColor: Colors.black,
                                        minimumSize: const Size(407, 50)
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                                    },
                                    child: const Text("Регистрация", style: TextStyle(color: Colors.orange, fontSize: 18),),
                                  )
                              )
                            ],
                          )
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}
