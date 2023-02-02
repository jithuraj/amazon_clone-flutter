import 'package:amazon_clone/modules/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController splashController = SplashController();
    splashController.checkIsSignedIn();
    return Scaffold();
  }
}
