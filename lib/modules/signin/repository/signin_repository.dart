import 'package:amazon_clone/helper/constants.dart';
import 'package:amazon_clone/modules/signin/response/sigin_response.dart';
import 'package:get/get_connect.dart';

class SigninRepository extends GetConnect {
  signin({required String username, required String password}) async {
    bool status = false;
    String message = "";
    try {} catch (err) {
      print('jr error = err');
    }
    FormData formData = FormData({
      Constants.signInUsernameKey: username,
      Constants.signInPasswordKey: password
    });
    Response response = await post(Constants.signinUrl, formData);
    status = response.body["status"];
    message = response.body["message"];

    return SignInResponse(status: status, message: message);
  }
}
