import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmail_setting/view/widgets/app_bar_section.dart';
import 'package:gmail_setting/view/widgets/left_side.dart';
import 'package:gmail_setting/view/widgets/right_side.dart';

import '../controller/setting_controller.dart';
import '../core/constants.dart';

class MyHomePage extends GetView<SettingController> {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SettingController());
    return Scaffold(
      backgroundColor: const Color(0xffF6F8FC),
      key: Constants.scaffoldKey,
      appBar: const CustomAppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                LeftSection(),
                RightSection(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
