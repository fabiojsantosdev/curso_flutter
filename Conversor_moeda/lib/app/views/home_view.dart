import 'package:conversor_moeda/app/components/currency_box.dart';
import 'package:conversor_moeda/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);



  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
            child: Column(
              children: [
                Image.asset('assets/images/icon_logo.png',width: 150,height: 150),
                const SizedBox(height: 60,),
                 Currency_Box(
                   selectedItem: homeController.toCurrency,
                  controller: toText,
                  items: homeController.currencies,
                   onChanged: (model) {
                     setState(() {
                       homeController.toCurrency = model!;
                     });
                   },
                ),
                const SizedBox(height: 20,),
                Currency_Box(
                  selectedItem: homeController.fromCurrency,
                  controller: fromText,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.fromCurrency = model!;
                    });
                  },
                ),
                const SizedBox(height: 30,),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.w900),
                      primary: Colors.amber, onPrimary: Colors.black),
                    onPressed: () {
                    homeController.convert();
                }, child: const Text('Converter'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
