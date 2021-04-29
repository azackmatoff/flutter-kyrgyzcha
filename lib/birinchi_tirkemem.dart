import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project/ekinchi_bet.dart';

class BirinchiTirkemem extends StatefulWidget {
  @override
  _BirinchiTirkememState createState() => _BirinchiTirkememState();
}

class _BirinchiTirkememState extends State<BirinchiTirkemem> {
  int _esep = 0; //integer
  String _meninTekst = "Menin Tekts";
  String _meninTekst2 = 'asdsa';

  bool sanNol;

  void _ekigeKoboytuu() {
    _esep *= 2;
  }

  void _azaytuu() {
    _esep -= 2; // -2 ge azayt, _esep ti

    print("_esep: $_esep"); //terminalga jaz

    setState(() {}); // build, oshonu kayradan kur
  }

  void _eseptiEkigeKosh() {
    _esep += 2;
  }

  void _ekigeKoshkondoUIdiOzgort() {
    setState(() {
      _eseptiEkigeKosh();
    });

    print("_esep+: $_esep");
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EkinchiBet(
                    kelgenSan: _esep,
                    san: _meninTekst,
                    sanNol: sanNol,
                  ),
                ),
              );
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "сан: ${_esep.toString()}  | $_meninTekst",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _azaytuu,
                child: Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff005EA6),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "--",
                      style: TextStyle(fontSize: 45, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 30.0),
              GestureDetector(
                onTap: _ekigeKoshkondoUIdiOzgort,
                child: Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff005EA6),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 45, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
