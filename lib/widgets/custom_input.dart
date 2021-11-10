import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final IconData icon;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomInput({
    Key? key,
    required this.icon,
    required this.placeholder,
    required this.textController,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(bottom: 5, top: 5, left: 5, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: TextField(
        controller: textController,
        autocorrect: false,
        obscureText: isPassword,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
          ),
          hintText: placeholder,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
