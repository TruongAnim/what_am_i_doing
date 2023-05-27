import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_controller.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_state.dart';
import 'package:what_am_i_doing/overlays/pages/components/bubble_avatar.dart';
import 'package:what_am_i_doing/overlays/pages/components/menu_avatar.dart';
import 'package:what_am_i_doing/overlays/states/state_manager.dart';

class OverlayHomePage extends StatefulWidget {
  static const String routeName = '/home_overlay';
  const OverlayHomePage({Key? key}) : super(key: key);

  @override
  State<OverlayHomePage> createState() => _OverlayHomePageState();
}

class _OverlayHomePageState extends State<OverlayHomePage> {
  Color color = const Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    OverlayController controller = Get.find();
    return Material(
      color: Colors.transparent,
      elevation: 0.0,
      child: GestureDetector(
        onLongPress: () async {
          if (controller.overlayState.value == AppOverlayState.expand) {
            await FlutterOverlayWindow.resizeOverlay(100, 100);
            controller.overlayState.value = AppOverlayState.icon;
          } else {
            await FlutterOverlayWindow.resizeOverlay(200, 200);
            controller.overlayState.value = AppOverlayState.expand;
          }
        },
        child: Obx(() {
          return Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              // shape: _currentShape,
            ),
            child: controller.overlayState.value == AppOverlayState.icon
                ? BubbleAvatar(state: controller.currentState.value)
                : MenuAvatar(
                    items: StateManager.states.values.toList(),
                  ),
          );
        }),
      ),
    );
  }
}
