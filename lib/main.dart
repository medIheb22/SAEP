// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:prest_final/pages/Home_Screen/Home_Screen.dart';
import 'package:prest_final/pages/Splach_Screen.dart';
import 'package:prest_final/pages/auth/sign_in.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:prest_final/utils/applocal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstApp(),
        '/SignIn': (context) => const SignIn(),
        '/HomePage': (context) => const HomePage(),
      },
      localizationsDelegates: [
           AppLocale.delegate,
           GlobalMaterialLocalizations.delegate,
           GlobalWidgetsLocalizations.delegate
           ],
      supportedLocales: [
             Locale("fr", ""),
             Locale("ar", ""),
           ],
           locale: Locale("fr",""),
      localeResolutionCallback: (currentLang, supportLang) {
            if (currentLang != null) {
               for (Locale locale in supportLang) {
                 if (locale.languageCode == currentLang.languageCode) {
                 
                   return currentLang;
                 }
               } 
             }
            return supportLang.first;
         },
    );
  }
}

