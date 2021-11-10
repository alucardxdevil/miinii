import 'package:flutter/material.dart';

class ButtomLogin extends StatelessWidget {
  final String text;
  final Function onPressed;
  const ButtomLogin({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: const Color(0xff041645),
        ),
        width: double.infinity,
        height: 48,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
