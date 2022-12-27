import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class testerr extends StatefulWidget {
  final String result;
  const testerr({super.key, required this.result});

  @override
  State<testerr> createState() => _testerrState();
}

class _testerrState extends State<testerr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(widget.result)),
    );
  }
}
