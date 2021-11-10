import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String title;

  const Logo({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 0.9,
      child: Container(
        width: 150,
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            const Icon(
              Icons.account_circle,
              size: 120,
              color: Colors.white,
            ),
            const SizedBox(height: 15),
            Text(
              title,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
