import 'package:flutter/material.dart';
import 'package:project/birinchi_tirkemem.dart';

//Dart - strongly typed
// text = String
// sandar = num, int, double
// boolean = true, false
// video
// surot
// tizme = List, Set, Map
//
// method, functions
// _funkciyAty(){
// _bashkaFunkciya();
// }
// _bashkaFunkciya(){
//   logic
// }
// HOT RELOAD
// HOT RESTART

void main() {
  runApp(MeninTirkeme());
}

class MeninTirkeme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BirinchiTirkemem());
  }
}
