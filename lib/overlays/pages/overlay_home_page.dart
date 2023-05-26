import 'dart:developer';
import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_controller.dart';
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
  BoxShape _currentShape = BoxShape.circle;
  static const String _kPortNameOverlay = 'OVERLAY';
  static const String _kPortNameHome = 'UI';
  final _receivePort = ReceivePort();
  SendPort? homePort;
  String? messageFromOverlay;

  @override
  void initState() {
    super.initState();
    if (homePort != null) return;
    final res = IsolateNameServer.registerPortWithName(
      _receivePort.sendPort,
      _kPortNameOverlay,
    );
    log("$res : HOME");
    _receivePort.listen((message) {
      log("message from UI: $message");
      setState(() {
        messageFromOverlay = 'message from UI: $message';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    OverlayController controller = Get.find();
    return Material(
      color: Colors.transparent,
      elevation: 0.0,
      child: GestureDetector(
        onTap: () async {
          if (_currentShape == BoxShape.rectangle) {
            await FlutterOverlayWindow.resizeOverlay(100, 100);
            setState(() {
              _currentShape = BoxShape.circle;
            });
          } else {
            await FlutterOverlayWindow.resizeOverlay(200, 200);
            setState(() {
              _currentShape = BoxShape.rectangle;
            });
          }
        },
        child: Obx(() {
          return Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: _currentShape,
            ),
            child: _currentShape == BoxShape.circle
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
