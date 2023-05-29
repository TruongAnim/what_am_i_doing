import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:what_am_i_doing/overlays/repository/models/job_time.dart';
import 'package:what_am_i_doing/overlays/states/state_constants.dart';
import 'package:what_am_i_doing/overlays/states/state_manager.dart';
import 'package:what_am_i_doing/utils/datetime_utils.dart';

class AppRepository {
  late Isar _isar;
  AppRepository() {}
  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [JobTimeSchema],
      directory: dir.path,
    );
    print('init Isar done');
  }

  Future<JobTime> getTodayJobTime() async {
    final query =
        _isar.jobTimes.filter().timestampEqualTo(DatetimeUtils.getToday());
    JobTime? jobTime = await query.findFirst();
    if (jobTime == null) {
      await _isar.writeTxn(() async {
        await _isar.jobTimes
            .put(JobTime()..timestamp = DatetimeUtils.getToday());
      });
    }
    jobTime = await query.findFirst();
    return jobTime!;
  }

  void saveJobTime() async {
    JobTime jobTime = await getTodayJobTime();
    await _isar.writeTxn(() async {
      jobTime.timeQ1 =
          StateManager.states[StateConstant.importantUrgentState]!.time;
      jobTime.timeQ2 =
          StateManager.states[StateConstant.importantOnlyState]!.time;
      jobTime.timeQ3 = StateManager.states[StateConstant.urgentOnlyState]!.time;
      jobTime.timeQ4 = StateManager.states[StateConstant.uselessState]!.time;
      await _isar.jobTimes.put(jobTime);
    });
  }
}
