import 'package:flutter/material.dart';

class BubbleAvatar extends StatelessWidget {
  const BubbleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage('assets/images/icon1.png'),
    );
  }
}
