import 'package:amazon_clone/modules/home/controller/home_controller.dart';
import 'package:amazon_clone/modules/signin/view/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/state_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                controller.logout();
              },
              icon: Icon(Icons.logout),
            ),
            Expanded(
              child: Center(
                child: Text("home page"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
