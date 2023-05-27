import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_controller.dart';
import 'package:what_am_i_doing/overlays/states/job_state.dart';

class BubbleAvatar extends StatelessWidget {
  JobState state;
  BubbleAvatar({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        OverlayController controller = Get.find();
        controller.iconPress(state.key);
      },
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(state.image),
      ),
    );
  }
}
