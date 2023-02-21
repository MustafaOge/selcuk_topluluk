import 'package:flutter/material.dart';

class DropDownButton3 extends StatefulWidget {
  const DropDownButton3({Key? key}) : super(key: key);

  @override
  _DropDownButton3State createState() => _DropDownButton3State();
}

class _DropDownButton3State extends State<DropDownButton3> {
// Initial Selected Value
  String dropdownvalue = '1';

// List of items in our dropdown menu

  var items = [
    '1',
    '2',
    '3',
    '4',
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
