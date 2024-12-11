import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/bkash_controller.dart';

class Bkash extends StatelessWidget {
  final BkashController controller = Get.put(BkashController());
  Bkash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
