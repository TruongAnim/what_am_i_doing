import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_controller.dart';
import 'package:what_am_i_doing/overlays/states/job_state.dart';

class TextOverlay extends StatelessWidget {
  const TextOverlay({super.key});

  Widget buildText(String content) {
    Color color = content.contains('Not') ? Colors.red : Colors.green;
    return Text(
      content,
      style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    OverlayController controller = Get.find();
    JobState state = controller.currentState.value;
    return GestureDetector(
      onTap: () {
        controller.onPress(state.key);
      },
      child: Container(
        width: 200,
        height: 200,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          buildText(state.text1),
          buildText(state.text2),
        ]),
      ),
    );
  }
}
