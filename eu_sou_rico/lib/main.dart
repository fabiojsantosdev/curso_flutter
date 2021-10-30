import 'package:eu_sou_rico/app/eusourico_home.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const EusouricoApp());
}

class EusouricoApp extends StatelessWidget {
  const EusouricoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EusouricoHomePage(),
    );
  }
}
