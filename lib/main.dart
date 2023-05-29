import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:what_am_i_doing/home_page.dart';
import 'package:what_am_i_doing/overlays/pages/overlay_home_page.dart';
import 'package:what_am_i_doing/overlays/routes/app_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

@pragma("vm:entry-point")
void overlayMain() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OverlayHomePage.routeName,
      getPages: AppRoute.getPage(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
