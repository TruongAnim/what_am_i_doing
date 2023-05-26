import 'package:get/get.dart';
import 'package:what_am_i_doing/overlays/bindings/overlay_binding.dart';
import 'package:what_am_i_doing/overlays/pages/overlay_home_page.dart';

class AppRoute {
  static List<GetPage> getPage() {
    return [
      GetPage(
        name: OverlayHomePage.routeName,
        page: () => OverlayHomePage(),
        binding: OverlayBinding(),
      ),
    ];
  }
}
