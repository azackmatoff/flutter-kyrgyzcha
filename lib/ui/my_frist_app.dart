import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project/ui/second_page.dart';
import 'package:project/widgets/custom_button.dart';
import 'package:project/widgets/custom_container.dart';

class MyFirstApp extends StatefulWidget {
  @override
  _MyFirstAppState createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  int _number = 2; //integer
  String _text = "Menin Tekts";

  bool isZero;

  void _decrement() {
    _number -= 2; // -2 ge azayt, _number ti

    print("_number: $_number"); //terminalga jaz

    setState(() {}); // build, oshonu kayradan kur
  }

  void _addTwoToNumber() {
    _number += 2;
  }

  void _multiplyBy4() {
    _number *= 4;
    setState(() {});
    print("_multiplyBy4 _number+: $_number");
  }

  void _changeUIWhenAddedTwo() {
    setState(() {
      _addTwoToNumber();
    });

    print("_number+: $_number");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Тапшырма 01",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (newContext) => SecondPage(
                    kelgenSan: _number,
                    san: _text,
                    sanNol: isZero,
                  ),
                ),
              );
            },
            number: _number,
            text: _text,
            isZero: isZero,
          ),
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onTap: _decrement,
                buttonText: '-',
              ),
              SizedBox(width: 30.0),
              CustomButton(
                onTap: _multiplyBy4,
                buttonText: '4',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
