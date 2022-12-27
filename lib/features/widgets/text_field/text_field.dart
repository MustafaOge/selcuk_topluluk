import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintTextData,
  }) : super(key: key);
  final String hintTextData;
  @override
  Widget build(BuildContext context) {
    return TextField(
        style: TextStyle(fontSize: 16.0),
        decoration: InputDecoration(
            filled: false,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 32.0), borderRadius: BorderRadius.circular(17.0)),
            hoverColor: Colors.white,
            focusColor: Colors.white,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            prefixIcon: Icon(Icons.search),
            hintText: hintTextData,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 32.0), borderRadius: BorderRadius.circular(17.0))));
  }
}
