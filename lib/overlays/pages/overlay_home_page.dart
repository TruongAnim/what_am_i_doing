import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_controller.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_state.dart';
import 'package:what_am_i_doing/overlays/pages/components/expand_overlay.dart';
import 'package:what_am_i_doing/overlays/pages/components/icon_overlay.dart';
import 'package:what_am_i_doing/overlays/pages/components/text_overlay.dart';

class OverlayHomePage extends StatefulWidget {
  static const String routeName = '/home_overlay';
  const OverlayHomePage({Key? key}) : super(key: key);

  @override
  State<OverlayHomePage> createState() => _OverlayHomePageState();
}

class _OverlayHomePageState extends State<OverlayHomePage> {
  Color color = const Color(0xFFFFFFFF);

  Widget buildOverlay(AppOverlayState state) {
    switch (state) {
      case AppOverlayState.icon:
        return IconOverlay();
      case AppOverlayState.text:
        return TextOverlay();
      case AppOverlayState.expand:
        return ExpandOverlay();
    }
  }

  @override
  Widget build(BuildContext context) {
    OverlayController controller = Get.find();
    return Material(
      color: Colors.transparent,
      elevation: 0.0,
      child: Obx(() {
        return Container(
          height: 200,
          width: 200,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            // shape: _currentShape,
          ),
          child: buildOverlay(controller.overlayState.value),
        );
      }),
    );
  }
}
