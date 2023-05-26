import 'package:flutter/material.dart';
import 'package:what_am_i_doing/constants/asset_helper.dart';
import 'package:what_am_i_doing/overlays/pages/components/bubble_avatar.dart';
import 'package:what_am_i_doing/overlays/states/job_state.dart';

class MenuAvatar extends StatelessWidget {
  List<JobState> items;
  MenuAvatar({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: BubbleAvatar(
              state: items[0],
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: BubbleAvatar(
              state: items[1],
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: BubbleAvatar(
              state: items[2],
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: BubbleAvatar(
              state: items[3],
            ),
          ),
        ],
      ),
    );
  }
}
