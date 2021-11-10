import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String route;
  final String titles;
  final String subtitle;

  const Labels({
    Key? key,
    required this.route,
    required this.titles,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titles,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          child: Text(
            subtitle,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, route);
          },
        ),
      ],
    );
  }
}
