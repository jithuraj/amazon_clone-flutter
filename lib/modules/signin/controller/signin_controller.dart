import 'package:amazon_clone/helper/helper.dart';
import 'package:amazon_clone/modules/home/view/home_page.dart';
import 'package:amazon_clone/modules/signin/repository/signin_repository.dart';
import 'package:amazon_clone/modules/signin/response/sigin_response.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class SigninController extends GetxController {
  SigninRepository signinRepository = SigninRepository();

  signIn({required String username, required String password}) async {
    SignInResponse signInResponse =
        await signinRepository.signin(username: username, password: password);
    if (signInResponse.status) {
      Get.off(() => HomePage());
      signinRepository.setIsSignedIn(value: true);
    } else {
      showErrorModalSheet(
          context: Get.context, message: signInResponse.message);
    }
  }
}
