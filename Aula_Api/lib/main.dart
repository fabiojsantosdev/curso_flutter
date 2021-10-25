import 'package:flutter/material.dart';

import 'app/home_page.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exemplo Api',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: const HomePage(),
    );
  }
}
