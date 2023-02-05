import 'package:amazon_clone/modules/signin/repository/signin_repository.dart';
import 'package:get/get.dart';
import '../../signin/view/signin_page.dart';

class HomeController extends GetxController {
  SigninRepository signinRepository = SigninRepository();
  logout() {
    Get.off(() => SigninPage());
    signinRepository.setIsSignedIn(value: false);
  }

  
}
