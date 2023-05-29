import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/repository/app_repository.dart';
import 'package:what_am_i_doing/overlays/repository/models/job_time.dart';
import 'package:what_am_i_doing/overlays/states/state_manager.dart';

class DataController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print('oninit');
  }

  @override
  void onReady() async {
    print('onready');
    super.onReady();
    AppRepository appRepository = AppRepository();
    await appRepository.init();
    JobTime jobTime = await appRepository.getTodayJobTime();
    StateManager.updateTime(jobTime);
  }
}
