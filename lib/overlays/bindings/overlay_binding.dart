import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/controllers/overlay_controller.dart';

class OverlayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OverlayController>(() => OverlayController());
  }
}
