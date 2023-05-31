import 'dart:async';

import 'package:flutter/material.dart';
import 'package:what_am_i_doing/overlays/pages/components/image_overlay.dart';
import 'package:what_am_i_doing/overlays/pages/components/text_overlay.dart';
import 'package:what_am_i_doing/overlays/pages/components/time_overlay.dart';

class SrinkOverlay extends StatefulWidget {
  const SrinkOverlay({super.key});

  @override
  State<SrinkOverlay> createState() => _SrinkOverlayState();
}

class _SrinkOverlayState extends State<SrinkOverlay> {
  late PageController controller;
  late Timer _timer;
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      controller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: const [
        ImageOverlay(),
        TextOverlay(),
        TimeOverlay(),
      ],
    );
  }
}
