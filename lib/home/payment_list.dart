import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment/bkash/view/bkash.dart';

import '../shurjo/shurjo.dart';
import 'controller/controller.dart';

class PaymentList extends StatelessWidget {
  PaymentList({super.key});
  final PaymentController controller = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment List'),
        centerTitle: true,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
        child: Column(
          children: [
            SizedBox(
              height: 75,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'asset/bkash.png',
                          height: 65,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Obx(() => Radio<int>(
                            value: 1,
                            groupValue: controller.groupValue.value,
                            onChanged: (int? value) {
                              if (value != null) {
                                controller.updateGroupValue(value);
                              }
                            },
                          )),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 75,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          'asset/uddokta.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Obx(() => Radio<int>(
                            value: 0,
                            groupValue: controller.groupValue.value,
                            onChanged: (int? value) {
                              if (value != null) {
                                controller.updateGroupValue(value);
                              }
                            },
                          )),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 75,
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          'asset/shurjoPay.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Obx(() => Radio<int>(
                            value: 2,
                            groupValue: controller.groupValue.value,
                            onChanged: (int? value) {
                              if (value != null) {
                                controller.updateGroupValue(value);
                              }
                            },
                          )),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      backgroundColor: Colors.purple.shade100),
                  onPressed: () {
                    if (controller.groupValue == 1) {
                      Get.to(() => Bkash());
                    } else if (controller.groupValue == 0) {
                      Get.to(() => Shurjo());
                    }

                    print(controller.groupValue.toString());
                  },
                  child: const Text(
                    'Pay Now',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
