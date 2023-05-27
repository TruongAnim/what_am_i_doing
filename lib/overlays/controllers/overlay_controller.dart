import 'dart:developer';
import 'dart:isolate';
import 'dart:ui';

import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_state.dart';
import 'package:what_am_i_doing/overlays/states/job_state.dart';
import 'package:what_am_i_doing/overlays/states/state_constants.dart';
import 'package:what_am_i_doing/overlays/states/state_manager.dart';

class OverlayController extends GetxController {
  StateManager stateManager = StateManager();

  late Rx<JobState> currentState;

  Rx<AppOverlayState> overlayState = Rx<AppOverlayState>(AppOverlayState.icon);
  static const String _kPortNameOverlay = 'OVERLAY';
  static const String _kPortNameHome = 'UI';
  final _receivePort = ReceivePort();
  SendPort? homePort;
  String? messageFromOverlay;

  @override
  void onInit() {
    super.onInit();
    currentState = Rx(stateManager.currentState);

    if (homePort != null) return;
    final res = IsolateNameServer.registerPortWithName(
      _receivePort.sendPort,
      _kPortNameOverlay,
    );
    log("$res : HOME");
    _receivePort.listen((message) {
      log("message from UI: $message");
    });
  }

  void iconPress(String key) {
    stateManager.changeState(StateConstant.uselessState);
    currentState.value = stateManager.currentState;
  }
}
