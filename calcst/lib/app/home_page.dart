import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final custoController = TextEditingController();
  final ivaController = TextEditingController();
  final aliqintController = TextEditingController();
  final aliqextController = TextEditingController();
  final baseController = TextEditingController();
  final percstController = TextEditingController();
  final valorstController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        centerTitle: true,
        title: const Text('Calculadora ST'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //TextField vlcusto
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: size.width * 0.2,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: custoController,
                      keyboardType: TextInputType.number,
                      decoration: const  InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(color: Colors.black,fontSize: 15),
                        labelText: 'Custo',
                        hintText: '0.00',
                        contentPadding: EdgeInsets.only(top: 10, bottom: 10),
                      ),
                    ),
                  ),
                ),

                //TextField IVA
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: size.width * 0.2,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: ivaController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                        labelText: 'Iva',
                        hintText: '0.00',
                        contentPadding: EdgeInsets.only(top: 10, bottom: 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //TextField percAliqInt
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: size.width * 0.2,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: aliqintController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(color: Colors.black,fontSize: 15),
                        labelText: 'AliqInt',
                        hintText: '0.00',
                        contentPadding: EdgeInsets.only(top: 20, bottom: 10),
                      ),
                    ),
                  ),
                ),
                //TextField percAliqExt
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: size.width * 0.2,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: aliqextController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(color: Colors.black,fontSize: 15),
                        labelText: 'AliqExt',
                        hintText: '0.00',
                        contentPadding: EdgeInsets.only(top: 20, bottom: 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //TextField base st
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: size.width * 0.2,
                    child: TextFormField(
                      style: const TextStyle(color: Colors.amber),
                      textAlign: TextAlign.center,
                      enabled: false,
                      controller: baseController,
                      decoration: const InputDecoration(
                        disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(color: Colors.black,fontSize: 15),
                        labelText: 'BaseST',
                        contentPadding: EdgeInsets.only(top: 20, bottom: 10),
                      ),
                    ),
                  ),
                ),

                //TextField porcentagem ST
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: size.width * 0.2,
                    child: TextFormField(
                      style: const TextStyle(color: Colors.red),
                      textAlign: TextAlign.center,
                      enabled: false,
                      controller: percstController,
                      decoration: const InputDecoration(
                        disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(color: Colors.black,fontSize: 15),
                        labelText: '%PERCST',
                        contentPadding: EdgeInsets.only(top: 20, bottom: 10),
                      ),
                    ),
                  ),
                ),

                //Valor ST
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: size.width * 0.2,
                    child: TextFormField(
                      style: const TextStyle(color: Colors.amber),
                      textAlign: TextAlign.center,
                      enabled: false,
                      controller: valorstController,
                      decoration: const InputDecoration(
                        disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(color: Colors.black,fontSize: 15),
                        labelText: 'Valor ST',
                        contentPadding: EdgeInsets.only(top: 20, bottom: 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: const Text('Calcular'),
                  onPressed: () {
                    calculaSt();
                  },
                ),
                ElevatedButton(
                  child: const Text('Limpar'),
                  onPressed: () {
                    setState(() {
                      resetEdit();
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void calculaSt() {
    final custo = double.parse(custoController.text);
    final iva = double.parse(ivaController.text);
    final aliqint = double.parse(aliqintController.text);
    final aliqext = double.parse(aliqextController.text);

    double basest = (custo) * (1 + (iva / 100));
    double valorSt = (basest * aliqint / 100) - (custo * aliqext / 100);
    double perst = (valorSt) / (custo) * 100;

    baseController.text    = basest.toStringAsFixed(2);
    percstController.text  = perst.toStringAsFixed(2);
    valorstController.text = valorSt.toStringAsFixed(2);

    atualizarTela();
  }

  void atualizarTela() {
    setState(() {});
  }

  void resetEdit(){
    custoController.text    = '' ;
    ivaController.text      = '' ;
    aliqintController.text  = '' ;
    aliqextController.text  = '' ;
    baseController.text     = '' ;
    percstController.text   = '' ;
    valorstController.text  = '' ;

  }
}
