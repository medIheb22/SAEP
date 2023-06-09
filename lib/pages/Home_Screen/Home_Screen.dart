// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:prest_final/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor:AppColors.primaryblue ,
        child: ListView(
          padding: EdgeInsets.zero,
          children:<Widget> [
            Container(
              height: 100, // ajustez cette valeur selon vos besoins
              child: const DrawerHeader(
                child: Text("Menu",style: TextStyle(color: Colors.white,fontSize: 30)),
              ),
            ),
            ListTile(
              title: const Text("Fiche GDA",style: TextStyle(color: Colors.white)),
              onTap:() {},
            ),const Divider(color: Colors.white),
            ListTile(
              title: const Text("Saisir des données",style: TextStyle(color: Colors.white)),
              onTap:() {},
            ),
            const Divider(color: Colors.white,),
            ListTile(
              title: const Text("Consultation",style: TextStyle(color: Colors.white)),
              onTap:() {},
            ),
            const Divider(color: Colors.white,),
            ListTile(
              title: const Text("Statistiques",style: TextStyle(color: Colors.white)),
              onTap:() {},
            ),
            const Divider(color: Colors.white,),
            ListTile(
              title: const Text("Modifier Mot de passe",style: TextStyle(color: Colors.white)),
              onTap:() {},
            ),
            const Divider(color: Colors.white,),
            ListTile(
              title: const Text("Déconnexion",style: TextStyle(color: Colors.white)),
              onTap:() {
                Navigator.popAndPushNamed(context, '/SignIn');
              },
            ),
          ],
        ),
      ),
    );
  }
}
