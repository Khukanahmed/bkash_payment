import 'package:bkash/bkash.dart';
import 'package:get/get.dart';

class BkashController extends GetxController {
  @override
  void onInit() {
    bkashPayment();
  }

  double totalPrice = 10.00;

  /// bKash
  bkashPayment() async {
    final bkash = Bkash(
      logResponse: true,
    );

    try {
      final response = await bkash.pay(
        context: Get.context!,
        amount: totalPrice,
        merchantInvoiceNumber: 'Test0123456',
      );

      print(response.trxId);
      print(response.paymentId);
    } on BkashFailure catch (e) {
      print(e.message);
    }
  }
}
