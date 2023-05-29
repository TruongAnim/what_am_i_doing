import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/controllers/data_controller.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_controller.dart';

class OverlayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OverlayController>(() => OverlayController());
    Get.put(DataController());
  }
}
