import 'package:e_commerce/utils/theme.dart';
import 'package:e_commerce/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/auth_controller.dart';

class CheckWidget extends StatelessWidget {
  CheckWidget({Key? key}) : super(key: key);

  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (_) => Row(
        children: [
          InkWell(
            onTap: () {
              controller.checkBox();
            },
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: controller.isCheckBox
                  ? Get.isDarkMode
                      ? Image.asset('assets/images/check.png')
                      : const Icon(
                          Icons.done,
                          color: pinkClr,
                          size: 30,
                        )
                  : Container(),
            ),
          ),
          const SizedBox(width: 10),
          Row(
            children: [
              TextUtils(
                text: 'I accept ',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Get.isDarkMode ? Colors.black : Colors.white,
                underLine: TextDecoration.none,
              ),
              TextUtils(
                text: 'terms & conditions',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Get.isDarkMode ? Colors.black : Colors.white,
                underLine: TextDecoration.underline,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
