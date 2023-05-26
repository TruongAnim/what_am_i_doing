import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/states/job_state.dart';
import 'package:what_am_i_doing/overlays/states/state_constants.dart';
import 'package:what_am_i_doing/overlays/states/state_manager.dart';

class OverlayController extends GetxController {
  StateManager stateManager = StateManager();

  late Rx<JobState> currentState;
  @override
  void onInit() {
    super.onInit();
    currentState = Rx(stateManager.currentState);
  }

  void iconPress() {}
}
