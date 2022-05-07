import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tut_app/presentation/resources/constants_manager.dart';
import 'package:tut_app/presentation/resources/routes_manager.dart';

import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer?_timer;
  _startDealy(){
    _timer=Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }
  @override
  void initState() {
    super.initState();
    _startDealy();
  }
  _goNext(){
Navigator.pushReplacementNamed(context,Routes.onBoardingRoute );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body:
          const Center(child: Image(image: AssetImage(ImageAssets.splashLogo))),
    );
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}