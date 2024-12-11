import 'package:get/get.dart';

class PaymentController extends GetxController {
var groupValue = (-1).obs; 

  void updateGroupValue(int value) {
    groupValue.value = value;
  }
}
