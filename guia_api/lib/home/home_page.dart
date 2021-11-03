import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guia Acesso Api'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed('/http'),
              child: const Text(
                'HTTP',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'DIO',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/getconnect'),
              child: const Text(
                'GETCONNECT',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
