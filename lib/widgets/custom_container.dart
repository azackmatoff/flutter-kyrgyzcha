import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key key,
    @required this.number,
    @required this.onTap,
    @required this.text,
    @required this.isZero,
  }) : super(key: key);

  final int number;
  final String text;
  final bool isZero;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
            "сан: ${number.toString()}  | $text",
            style: TextStyle(
              fontSize: 22,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
