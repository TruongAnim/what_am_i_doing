import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_controller.dart';

class ImageOverlay extends StatelessWidget {
  const ImageOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    OverlayController controller = Get.find();
    return Image.asset(controller.currentState.value.image);
  }
}
