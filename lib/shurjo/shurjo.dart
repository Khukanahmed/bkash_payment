import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../uddokta/controller/controller.dart';

class Shurjo extends StatelessWidget {
  Shurjo({super.key});
  UddoktaController controller = Get.put(UddoktaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment List'),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
