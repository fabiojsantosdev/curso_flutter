import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final String label;
  final TextEditingController? controllers;
  final FormFieldValidator<String>? validador;
  final TextStyle? style;
  

   const TextForm({Key? key,required this.label, this.validador, this.controllers,this.style,}) : super(key: key);


   @override
   Widget build(BuildContext context) {
       return TextFormField(
                controller: controllers,
                  keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     labelText: label,
                     labelStyle: style,), 
                     style: const TextStyle(fontSize: 20),
                     validator: validador,
                 );
  }
}