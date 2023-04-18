import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'auth/sign_in.dart';


class FirstApp extends StatefulWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 4 ),(() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => SignIn()))); 
    }));
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset("assets/images/Logo.jpg"),
    );
  }
}