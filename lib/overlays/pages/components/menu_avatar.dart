import 'package:flutter/material.dart';
import 'package:what_am_i_doing/overlays/pages/components/bubble_avatar.dart';

class MenuAvatar extends StatelessWidget {
  const MenuAvatar({super.key});

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
