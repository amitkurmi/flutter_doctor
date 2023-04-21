import 'package:flutter/material.dart';
import 'package:flutter_doctor/utils/config.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.width, required this.title, required this.disable, required this.onPressed});


final double width;
final String title;
final bool disable;
final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Config.primaryColor
        ),
        onPressed: disable ? null :onPressed, 
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        )),
    );
  }
}