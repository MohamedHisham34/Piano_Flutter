// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class testoo extends StatelessWidget {
  const testoo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        customcolumb(Name: 'Mohamed', Age: '25'),
        customcolumb(Name: 'Ahmed', Age: '22'),
        customcolumb(Name: 'Yasser', Age: '55'),
      ])),
    );
  }

  Column customcolumb({required String Name, required String Age}) {
    return Column(
      children: [Text(Name), Text(Age)],
    );
  }
}
