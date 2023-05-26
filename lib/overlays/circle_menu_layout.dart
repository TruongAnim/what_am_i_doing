import 'package:flutter/material.dart';

class ExpandAvatar extends StatelessWidget {
  const ExpandAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Stack(
        children: const [
          Positioned(
            left: 0,
            top: 0,
            child: BubbleAvatar(),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: BubbleAvatar(),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: BubbleAvatar(),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: BubbleAvatar(),
          ),
        ],
      ),
    );
  }
}

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
