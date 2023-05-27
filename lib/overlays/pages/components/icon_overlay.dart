import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_controller.dart';
import 'package:what_am_i_doing/overlays/pages/components/bubble_avatar.dart';

class IconOverlay extends StatelessWidget {
  const IconOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    OverlayController controller = Get.find();
    return Container(
      width: 100,
      height: 100,
      child: BubbleAvatar(state: controller.currentState.value),
    );
  }
}
