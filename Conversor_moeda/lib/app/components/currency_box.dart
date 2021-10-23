import 'package:conversor_moeda/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class Currency_Box extends StatelessWidget {
  final List<CurrencyModel> items;
  final TextEditingController controller;
  final CurrencyModel selectedItem;
  final void Function(CurrencyModel?)? onChanged;

  const Currency_Box({Key? key, required this.items, required this.controller,
    required this.onChanged, required this.selectedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 2,right: 10),
            child: SizedBox(
              height: 56,
              child: DropdownButton<CurrencyModel>(
                isExpanded: true,
                value: selectedItem,
                underline: Container(height: 1, color: Colors.amber,),
                items: items.map((e) => DropdownMenuItem<CurrencyModel>(
                  value: e,
                    child: Text(e.name)))
                    .toList(),
                onChanged: onChanged,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10,),
         Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(right: 2),
            child: TextField(

              keyboardType: TextInputType.number,
              controller: controller,
              decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder (borderSide: BorderSide(color: Colors.amber))
              ),
            ),
          ),
        ),
      ],
    );
  }
}
