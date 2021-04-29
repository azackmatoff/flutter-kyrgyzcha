//ozgoro turgan
import 'package:flutter/material.dart';

//var, final, const
class EkinchiBet2 extends StatefulWidget {
  final int kelgenSan;
  final String san;
  final bool sanNol;

  EkinchiBet2({this.kelgenSan, this.san, this.sanNol});
  // EkinchiBet2({Key key}) : super(key: key);

  @override
  _EkinchiBet2State createState() => _EkinchiBet2State(kelgenSan2: kelgenSan);
}

class _EkinchiBet2State extends State<EkinchiBet2> {
  int kelgenSan2;
  String san2;
  bool sanNol2;

  _EkinchiBet2State({this.kelgenSan2, this.san2, this.sanNol2});

  @override
  void initState() {
    super.initState();
    //
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {});
    //
  }

  @override
  void dispose() {
    //
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StatefulWidget')),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Kelgen san Widget.kelgenSan: ${widget.kelgenSan}",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Kelgen san Constructor kelgenSan: $kelgenSan2",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
