import 'dart:convert';

import 'package:flutter_sslcommerz/model/SSLCSdkType.dart';
import 'package:flutter_sslcommerz/model/SSLCommerzInitialization.dart';
import 'package:flutter_sslcommerz/model/SSLCurrencyType.dart';
import 'package:flutter_sslcommerz/sslcommerz.dart';
import 'package:get/get.dart';

class UddoktaController extends GetxController {
  @override
  void onInit() {
    sslcommerz();
  }

  double totalPrice = 10.00;

  // SslCommerz
  void sslcommerz() async {
    Sslcommerz sslcommerz = Sslcommerz(
      initializer: SSLCommerzInitialization(
        multi_card_name: "visa,master,bkash",
        currency: SSLCurrencyType.BDT,
        product_category: "Digital Product",
        sdkType: SSLCSdkType.TESTBOX,
        store_id: "your_store_id",
        store_passwd: "your_store_password",
        total_amount: totalPrice,
        tran_id: "TestTRX001",
      ),
    );

    final response = await sslcommerz.payNow();

    if (response.status == 'VALID') {
      print(jsonEncode(response));

      print('Payment completed, TRX ID: ${response.tranId}');
      print(response.tranDate);
    }

    if (response.status == 'Closed') {
      print('Payment closed');
    }

    if (response.status == 'FAILED') {
      print('Payment failed');
    }
  }
}
