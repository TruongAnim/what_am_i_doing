import 'dart:async';
import 'dart:developer';
import 'dart:isolate';
import 'dart:ui';

import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_state.dart';
import 'package:what_am_i_doing/overlays/states/job_state.dart';
import 'package:what_am_i_doing/overlays/states/state_manager.dart';

class OverlayController extends GetxController {
  StateManager stateManager = StateManager();

  late Rx<JobState> currentState;
  late Rx<String> currentTime = Rx<String>("");
  late Rx<String> currentPercent = Rx<String>("");
  late Timer timer;

  Rx<AppOverlayState> overlayState = Rx<AppOverlayState>(AppOverlayState.srink);
  static const String _kPortNameOverlay = 'OVERLAY';
  static const String _kPortNameHome = 'UI';
  final _receivePort = ReceivePort();
  SendPort? homePort;
  String? messageFromOverlay;

  @override
  void onInit() {
    super.onInit();
    startTimer();
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

  void onPress(String key) {
    if (key.isNotEmpty) {
      stateManager.changeState(key);
      currentState.value = stateManager.currentState;
    }

    if (overlayState.value == AppOverlayState.expand) {
      overlayState.value = AppOverlayState.srink;
    } else {
      overlayState.value = AppOverlayState.expand;
    }
  }

  String getCurrentTime() {
    Duration duration = stateManager.getCurrentTime();
    return '${duration.inHours}:${(duration.inMinutes % 60).toString().padLeft(2, '0')}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  String getCurrentPercent() {
    return '${(stateManager.getCurrentPercent() * 100).toStringAsFixed(2)}%';
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (overlayState.value == AppOverlayState.srink) {
        currentState.value.time++;
        currentTime.value = getCurrentTime();
        currentPercent.value = getCurrentPercent();
      }
    });
  }

  void stopTimer() {
    timer.cancel();
  }

  @override
  void onClose() {
    stopTimer();
    super.onClose();
  }
}
