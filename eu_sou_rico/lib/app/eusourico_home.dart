import 'package:flutter/material.dart';

class EusouricoHomePage extends StatefulWidget {
  const EusouricoHomePage({Key? key}) : super(key: key);

  @override
  _EusouricoHomePageState createState() => _EusouricoHomePageState();
}

class _EusouricoHomePageState extends State<EusouricoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text('Eu Sou Rico'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Image(
          image: NetworkImage(
              'https://conceitos.com/wp-content/uploads/ecologia/Esmeralda.jpg'),
        ),
      ),
    );
  }
}
