import 'package:flutter_easyloading/flutter_easyloading.dart';

Future<void> showToast(String msg) {
  return EasyLoading.showToast(
    msg,
    toastPosition: EasyLoadingToastPosition.bottom,
  );
}
