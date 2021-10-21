import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_app/app_controller.dart';
import 'package:primeiro_app/login_page.dart';
import 'home_page.dart' show HomePage;

class AppWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         theme: ThemeData(
           primarySwatch: Colors.grey,
           brightness: AppController.instance.isDartheme
               ? Brightness.dark
               : Brightness.light,
         ),
         initialRoute: '/',
         routes: {
           '/': (context) => LoginPage(),
           '/home': (context) => HomePage(),
         },
       );
    });
  }
}