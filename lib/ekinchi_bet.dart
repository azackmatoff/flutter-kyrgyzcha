import 'package:flutter/material.dart';
import 'package:project/ekinchi_bet_2.dart';

//ozgorboy turgan
class EkinchiBet extends StatelessWidget {
  final int kelgenSan;
  final String san;
  final bool sanNol;

  EkinchiBet({this.kelgenSan, this.san, this.sanNol});

  // const EkinchiBet({Key key, this.kelgenSan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StatelessWidget')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EkinchiBet2(
                          kelgenSan: kelgenSan,
                          san: san,
                          sanNol: sanNol,
                        )));
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
                "Kelgen san: $kelgenSan",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
