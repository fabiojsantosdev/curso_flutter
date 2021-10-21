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
              SizedBox(
                width: 120,
                height: 120,
                child: Image.asset('assets/images/icon_login.png'),
              ),
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
                    if (email == 'fabiodev@gmail.com' && password == '212527') {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      print('email ou senha invalidos');
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
  }

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
