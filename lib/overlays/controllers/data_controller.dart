import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/repository/app_repository.dart';
import 'package:what_am_i_doing/overlays/repository/models/job_time.dart';
import 'package:what_am_i_doing/overlays/states/state_manager.dart';

class DataController extends GetxController {
  AppRepository appRepository = AppRepository();
  @override
  void onReady() async {
    print('onready');
    super.onReady();
    await appRepository.init();
    JobTime jobTime = await appRepository.getTodayJobTime();
    StateManager.updateTime(jobTime);
  }

  void saveJobTimeToLocal() {
    appRepository.saveJobTime();
  }
}
