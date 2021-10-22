import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100,
            left: 25,
            right: 25,
            bottom: 100,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/icon_login_withe.png'),
              Container(
                height: 40,
              ),
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white,
                          width: 0.8), // Altera cor da borda OutlineInputBorder
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white,
                          width:
                              0.8), // Altera cor da borda OutlineInputBorder ao clicar
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(fontFamily: 'Roboto', fontSize: 12, color: Colors.white), //Altera cor da fonte labelText
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white,
                          width: 0.8), // Altera cor da borda OutlineInputBorder
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white,
                          width:
                              0.8), // Altera cor da borda OutlineInputBorder ao clicar
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(fontFamily: 'Roboto', fontSize: 12, color: Colors.white), //Altera cor da fonte labelText
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 100,
                height: 30,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, //Altera cor botão
                    onPrimary: Colors.black, //Altera cor texto botão
                  ),
                  onPressed: () {
                    if  (email == 'fabio' && password == '123'){
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                    (email.isEmpty || password.isEmpty);
                    showDialog<void>(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Algo deu errado!'),
                        content: const Text('Favor informar todos campos.'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                             },
                            ),
                           ],
                          );
                         },
                        );
                       }
                      },

                  child: const Text('Entrar'),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }// Final Widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withAlpha(180),
        body: Stack(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/images/background.jpg',
                  fit: BoxFit.cover,
                )),
            _body(),
          ],
        ));
  }
}
