import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  const CustomButton({
    Key key,
    this.onTap,
    this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
            buttonText,
            style: TextStyle(fontSize: 45, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
