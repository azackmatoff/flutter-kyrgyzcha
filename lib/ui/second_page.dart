import 'package:flutter/material.dart';
import 'package:project/ui/third_page.dart';
import 'package:project/widgets/custom_container.dart';

//ozgorboy turgan
class SecondPage extends StatelessWidget {
  final int kelgenSan;
  final String san;
  final bool sanNol;

  // SecondPage({this.kelgenSan, this.san, this.sanNol});

  const SecondPage({Key key, this.kelgenSan, this.san, this.sanNol})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StatelessWidget')),
      body: Center(
        child: CustomContainer(
          number: kelgenSan,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (newContext) => ThirdPage(
                  kelgenSan: kelgenSan,
                  san: san,
                  sanNol: sanNol,
                ),
              ),
            );
          },
          text: san,
          isZero: sanNol,
        ),

        // GestureDetector(
        //   onTap: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //             builder: (context) => EkinchiBet2(
        //                   kelgenSan: kelgenSan,
        //                   san: san,
        //                   sanNol: sanNol,
        //                 )));
        //   },
        //   child: Container(
        //     height: 50,
        //     width: 300,
        //     decoration: BoxDecoration(
        //       color: Colors.grey.shade300,
        //       shape: BoxShape.rectangle,
        //       borderRadius: BorderRadius.circular(10),
        //     ),
        //     child: Center(
        //       child: Text(
        //         "Kelgen san: $kelgenSan",
        //         style: TextStyle(
        //           fontSize: 22,
        //           color: Colors.black54,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
