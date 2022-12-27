import 'package:flutter/material.dart';

class DropDownButton2 extends StatefulWidget {
  const DropDownButton2({Key? key}) : super(key: key);

  @override
  _DropDownButton2State createState() => _DropDownButton2State();
}

class _DropDownButton2State extends State<DropDownButton2> {
// Initial Selected Value
  String dropdownvalue = 'Fen Fakültes,';

// List of items in our dropdown menu

  var items = [
    'Fen Fakültesi'
        'Bilgisayar Mühendisliği',
    'Makine Mühendisliği',
    'Elektrik Elektronik Mühendisliği',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Initial Value
      value: dropdownvalue,

      // Down Arrow Icon
      icon: const Icon(Icons.keyboard_arrow_down),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
    );
  }
}
