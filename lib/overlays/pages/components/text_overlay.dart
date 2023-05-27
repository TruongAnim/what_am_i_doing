import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_controller.dart';
import 'package:what_am_i_doing/overlays/states/job_state.dart';

class TextOverlay extends StatelessWidget {
  const TextOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    OverlayController controller = Get.find();
    JobState state = controller.currentState.value;
    return GestureDetector(
      onTap: () {
        controller.iconPress(state.key);
      },
      child: Container(
        width: 200,
        height: 200,
        child: Column(children: [
          Text(state.text1),
          Text(state.text2),
        ]),
      ),
    );
  }
}
