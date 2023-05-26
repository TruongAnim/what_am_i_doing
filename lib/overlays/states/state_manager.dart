import 'package:what_am_i_doing/constants/asset_helper.dart';
import 'package:what_am_i_doing/overlays/states/job_state.dart';
import 'package:what_am_i_doing/overlays/states/state_constants.dart';

class StateManager {
  static Map<String, JobState> states = {
    StateConstant.importantUrgentState: buildImportantUrgentState(),
    StateConstant.importantOnlyState: buildImportantOnlyState(),
    StateConstant.urgentOnlyState: buildUrgentOnlyState(),
    StateConstant.uselessState: buildUselessState(),
  };

  static JobState buildImportantUrgentState() {
    return JobState(
        key: StateConstant.importantUrgentState,
        image: AssetHelper.icon1,
        text1: 'Important',
        text2: 'Urgent',
        time: 0);
  }

  static JobState buildImportantOnlyState() {
    return JobState(
        key: StateConstant.importantUrgentState,
        image: AssetHelper.icon2,
        text1: 'Important',
        text2: 'Not Urgent',
        time: 0);
  }

  static JobState buildUrgentOnlyState() {
    return JobState(
        key: StateConstant.importantUrgentState,
        image: AssetHelper.icon3,
        text1: 'Not Important',
        text2: 'Urgent',
        time: 0);
  }

  static JobState buildUselessState() {
    return JobState(
        key: StateConstant.importantUrgentState,
        image: AssetHelper.icon4,
        text1: 'Not Important',
        text2: 'Not Urgent',
        time: 0);
  }

  late JobState currentState;

  StateManager() {
    changeState(StateConstant.importantUrgentState);
  }

  void changeState(String key) {
    currentState = states[key]!;
  }
}
