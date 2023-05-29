import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_controller.dart';

class TimeOverlay extends StatelessWidget {
  const TimeOverlay({super.key});

  Widget buildText(String content) {
    Color color = content.contains('%') ? Colors.red : Colors.green;
    return Text(
      content,
      style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    OverlayController controller = Get.find();
    return Obx(() {
      return Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildText(controller.currentTime.value),
          buildText(controller.currentPercent.value),
        ],
      ));
    });
  }
}
