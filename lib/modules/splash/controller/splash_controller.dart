import 'package:amazon_clone/modules/home/view/home_page.dart';
import 'package:amazon_clone/modules/signin/repository/signin_repository.dart';
import 'package:amazon_clone/modules/signin/view/signin_page.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class SplashController extends GetxController {
  SigninRepository signinRepository = SigninRepository();

  checkIsSignedIn() async {
    bool isSignedIn = await signinRepository.getIsSignedIn();
    if (isSignedIn) {
      Get.off(() => HomePage());
    } else {
      Get.off(() => SigninPage());
    }
  }
}
