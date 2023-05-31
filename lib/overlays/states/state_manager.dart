import 'package:what_am_i_doing/constants/asset_helper.dart';
import 'package:what_am_i_doing/overlays/repository/models/job_time.dart';
import 'package:what_am_i_doing/overlays/states/job_state.dart';
import 'package:what_am_i_doing/overlays/states/state_constants.dart';

class StateManager {
  static Map<String, JobState> states = {
    StateConstant.importantUrgentState: buildImportantUrgentState(),
    StateConstant.importantOnlyState: buildImportantOnlyState(),
    StateConstant.uselessState: buildUselessState(),
    StateConstant.urgentOnlyState: buildUrgentOnlyState(),
  };

  static JobState buildImportantUrgentState() {
    return JobState(
        key: StateConstant.importantUrgentState,
        icon: AssetHelper.icon1,
        image: AssetHelper.image1,
        text1: 'Important',
        text2: 'Urgent',
        time: 0);
  }

  static JobState buildImportantOnlyState() {
    return JobState(
        key: StateConstant.importantOnlyState,
        icon: AssetHelper.icon2,
        image: AssetHelper.image2,
        text1: 'Important',
        text2: 'Not Urgent',
        time: 0);
  }

  static JobState buildUselessState() {
    return JobState(
        key: StateConstant.uselessState,
        icon: AssetHelper.icon3,
        image: AssetHelper.image3,
        text1: 'Not Important',
        text2: 'Not Urgent',
        time: 0);
  }

  static JobState buildUrgentOnlyState() {
    return JobState(
        key: StateConstant.urgentOnlyState,
        icon: AssetHelper.icon4,
        image: AssetHelper.image4,
        text1: 'Not Important',
        text2: 'Urgent',
        time: 0);
  }

  late JobState currentState;

  StateManager() {
    changeState(StateConstant.importantUrgentState);
  }

  void changeState(String key) {
    currentState = states[key]!;
    currentState.lastTime =
        DateTime.now().subtract(Duration(seconds: currentState.time));
    print(currentState.lastTime);
  }

  static void updateTime(JobTime jobTime) {
    StateManager.states[StateConstant.importantUrgentState]!.time =
        jobTime.timeQ1;
    StateManager.states[StateConstant.importantOnlyState]!.time =
        jobTime.timeQ2;
    StateManager.states[StateConstant.urgentOnlyState]!.time = jobTime.timeQ3;
    StateManager.states[StateConstant.uselessState]!.time = jobTime.timeQ4;
    print('update time done');
  }

  Duration getTime(String key) {
    return Duration(seconds: states[key]!.time);
  }

  double getPercent(String key) {
    int sum = 0;
    states.values.toList().forEach((element) {
      sum += element.time;
    });
    return states[key]!.time / sum;
  }

  Duration getCurrentTime() {
    return getTime(currentState.key);
  }

  double getCurrentPercent() {
    return getPercent(currentState.key);
  }
}
