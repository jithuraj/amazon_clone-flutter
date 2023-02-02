import 'package:amazon_clone/modules/signin/controller/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SigninPage extends StatelessWidget {
  String username = "";
  String password = "";
  SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    SigninController signinController = Get.put(SigninController());
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Card(
            color: Colors.brown[100],
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 25),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "username"),
                    onChanged: (value) {
                      username = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "password"),
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: (() {
                        signinController.signIn(username: username,password: password);
                      }),
                      child: Text("Sign In"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
