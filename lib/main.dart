import 'package:amazon_clone/modules/splash/view/splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashScreen(),
    );
  }
}