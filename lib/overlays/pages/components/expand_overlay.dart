import 'package:flutter/material.dart';
import 'package:what_am_i_doing/overlays/pages/components/bubble_avatar.dart';
import 'package:what_am_i_doing/overlays/states/job_state.dart';
import 'package:what_am_i_doing/overlays/states/state_manager.dart';

class ExpandOverlay extends StatelessWidget {
  List<JobState> items = StateManager.states.values.toList();
  ExpandOverlay({super.key});

  Widget buildIcon(JobState state) {
    return Container(
      width: 70,
      height: 70,
      child: BubbleAvatar(state: state),
    );
  }

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
            child: buildIcon(items[0]),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: buildIcon(items[1]),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: buildIcon(items[2]),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: buildIcon(items[3]),
          ),
        ],
      ),
    );
  }
}
