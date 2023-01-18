import 'package:DiscountsApp/exit/exit.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationPage> {
  GlobalKey<FormState> key = GlobalKey();

  String username = "";

  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        body: ListView(
          padding: const EdgeInsets.only(top: 70),
          children: [
            Padding(
              padding: EdgeInsets.zero,
              child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "DiscountApp",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
            ),
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Регистрация",
                                style: TextStyle(
                                    fontSize: 35, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Form(
                            key: key,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: SizedBox(
                                    child: TextFormField(
                                      cursorColor: Colors.black,
                                      keyboardType: TextInputType.name,
                                      validator: (String? inValue) {
                                        if (inValue!.isEmpty) {
                                          return "Пожалуйста, введите логин";
                                        }
                                        return null;
                                      },
                                      onSaved: (String? inValue) {
                                        username = inValue!;
                                      },
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        fillColor: Colors.black,
                                        hintText: "Логин",
                                        labelText: "Логин",
                                        labelStyle: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black),
                                          borderRadius:
                                          BorderRadius.circular(7.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black, width: 2.0),
                                          borderRadius:
                                          BorderRadius.circular(7.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.zero,
                                  child: SizedBox(
                                      child: TextFormField(
                                        cursorColor: Colors.black,
                                        obscureText: true,
                                        validator: (String? inValue) {
                                          if (inValue!.isEmpty) {
                                            return "Пожалуйста, введите пароль";
                                          }
                                          return null;
                                        },
                                        onSaved: (String? inValue) {
                                          password = inValue!;
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                          hintText: "Пароль",
                                          labelText: "Пароль",
                                          labelStyle: const TextStyle(
                                              color: Colors.black, fontSize: 18),
                                          border: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.black),
                                            borderRadius:
                                            BorderRadius.circular(7.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.black, width: 2.0),
                                            borderRadius:
                                            BorderRadius.circular(7.0),
                                          ),
                                        ),
                                      )),
                                ),
                                Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 50,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            shadowColor: Colors.black,
                                            minimumSize: const Size(300, 50)),
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const ExitPage()),
                                              ModalRoute.withName('/registration'));
                                        },
                                        child: const Text(
                                          "Зарегистрироваться",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                    )),
                                Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 50,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            shadowColor: Colors.black),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Назад",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ))
                              ],
                            ))
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}
