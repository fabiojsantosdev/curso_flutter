import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_app/app_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Primeiro App'),
        titleTextStyle: const TextStyle(fontStyle: FontStyle.italic,fontSize: 20),
        actions: [
          CustomSwitch()
        ],
      ),

      body: SizedBox(
        width: double.infinity,
        height: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Clicou Vezes: $counter', style: const TextStyle(
                fontSize: 20,color: Colors.deepPurple,fontWeight: FontWeight.bold),
            ),
            Container(
              height: 40,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add, color: Colors.black,size: 30,),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),

    );
  }
}

class CustomSwitch extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
