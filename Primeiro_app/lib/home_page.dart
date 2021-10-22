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
      drawer: Drawer(
        child: Column(
          children: [
             UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(borderRadius: BorderRadius.circular(40.0),
                child: Image.network(
                    'https://avatars.githubusercontent.com/u/92104539?s=400&u=a4f41028a021575b9fca955847fec53e5c56e9e7&v=4'
                ),
              ),
               accountName: const Text('Fabio Santos'),
                 accountEmail: const Text('fabiojsantosdev@gmail.com'),),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sair'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Primeiro App'),
        titleTextStyle: const TextStyle(fontStyle: FontStyle.italic,fontSize: 20),
        actions: const [
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
  const CustomSwitch({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
