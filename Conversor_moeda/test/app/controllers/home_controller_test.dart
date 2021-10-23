import 'package:conversor_moeda/app/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

main(){
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText,fromText: fromText);
  
  test('Deve converter Real/Dolar', () {
        toText.text = '2.0';
        homeController.convert();
        expect(fromText.text, '0.36');
  }  );
}