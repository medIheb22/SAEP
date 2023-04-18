// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:prest_final/utils/app_colors.dart';
import 'package:prest_final/utils/applocal.dart';



class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
       final TextEditingController emailController = TextEditingController();
       final TextEditingController passwordController = TextEditingController();
        
        
  
  
  @override

  Widget build(BuildContext context) {
    String idt = getLang(context, "welcome");
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primaryblue,
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 200, 10, 10),
        height: 450,
        width: 450,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/logo2.jpg", height: 90),
                  Image.asset("assets/images/logo11.jpg", height: 90),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.text,
                    decoration:  InputDecoration(
                        hintText:  idt ,
                        hintStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 13),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                        hintText: "Mot de passe ",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 13),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 0.5, color: Colors.grey)),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: () {
                      final String email = emailController.value.text;
                      final String password = passwordController.value.text;
                      if (email.isEmpty || password.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Erreur'),
                            content:
                                const Text('Veuillez remplir tous les champs.'),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          ),
                        );
                      } else {
                        // final Utilisateur utilisateur =
                        //     Utilisateur("med_iheb", "12345678");
                        if (email == "med_iheb" && password == "12345") {
                          Navigator.popAndPushNamed(context, '/HomePage');
                        } else {
                          emailController.clear();
                          passwordController.clear();
                        }
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)))),
                    child: const Text(
                      "Connexion",
                      style: TextStyle(color: Colors.black),
                    )),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text("Francais",
                            style: TextStyle(
                              color: Colors.black,
                            ))),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Arabic",
                            style: TextStyle(
                              color: Colors.black,
                            ))),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Utilisateur {
  final String email;
  final String password;

  Utilisateur(this.email, this.password);
}
