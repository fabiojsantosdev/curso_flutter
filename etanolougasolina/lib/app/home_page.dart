import 'package:etanolougasolina/widget/widget_form.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

  final gasolinacontroller = TextEditingController();
  final etanolcontroller = TextEditingController();
  String _infoText = "Informe o valor de cada combustível";
  final _formkey = GlobalKey<FormState>();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            clear();
          }, 
          icon: const Icon(Icons.refresh))
        ],
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text(
          'Etanol ou Gasolina?',
          style: TextStyle(fontSize: 25,
            color: Colors.black, /*fontFamily: 'SegoeUI'*/
          ),
        ),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20,top: 40, left: 30,right: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(Icons.directions_car,color: Colors.amber,size: 100,),
                 TextForm(
                  controllers: etanolcontroller,
                  label: 'Etanol',
                  style: const TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold,),
                  validador: (value) {
                    if(value == null || value.isEmpty) {
                      return 'Favor informar preço do Etanol';
                    }
                    return null;
                  },
                ),
                Container(height: 50,),
                 TextForm(
                   controllers: gasolinacontroller,
                  label: 'Gasolina',
                  style: const TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold,),
                  validador: (value) {
                    if(value == null || value.isEmpty) {
                      return 'Favor informar preço da Gasolina';
                    }
                    return null;
                  },
                ),
                Container(height: 50,),
                SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber,
                          textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          _formkey.currentState!.validate();
                          if(etanolcontroller.text.isNotEmpty && gasolinacontroller.text.isNotEmpty){
                          calcular();
                          } 
                        },
                        child: const Text('Calcular'),
                      )),
                      Container(height: 20,),
                      buildTextInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildTextInfo(){
    return Text(_infoText,
    textAlign: TextAlign.center,
    style: const TextStyle(color: Colors.black,fontSize: 20,),
    
    );
  }

  void calcular(){
    final etanol = double.tryParse(etanolcontroller.text.replaceAll(',', '.')) ?? 0;
    final gasolina = double.tryParse(gasolinacontroller.text.replaceAll(',', '.'))?? 0;

    
    double resultado = (etanol) / (gasolina) *100;

     if(resultado > 70.10){
      _infoText = " Percentual : ${resultado.toStringAsPrecision(4)} %\n\nAbasteça com Gasolina";
    }else {
      _infoText = " Percentual : ${resultado.toStringAsPrecision(4)} %\n\nAbasteça com Etanol";
    }
    
    refresh();
  }

  void refresh(){
    setState(() {
      
    });
  }

  void clear(){
    setState(() {
      etanolcontroller.text = '';
      gasolinacontroller.text = '';
      _infoText = "Informe o valor de cada combustível";
    });
  }
}
