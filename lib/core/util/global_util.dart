import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

@injectable
class GlobalUtil {
  void showSuccessToast(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      backgroundColor: const Color(0xFFDEEFFD),
      textColor: const Color(0XFF2196F3),
      fontSize: 12.sp,
    );
  }

  void showFailedToast(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      backgroundColor: const Color(0xFFFDE3E1),
      textColor: const Color(0xFFF44336),
      fontSize: 14.sp,
    );
  }

  static Future<dynamic> launchAppUrl(Uri url, BuildContext context) async {
    debugPrint('Launch App Url : $url');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      Fluttertoast.showToast(
        msg: 'Cant Launch Url !',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        backgroundColor: Colors.red,
        textColor: Colors.red,
        fontSize: 14.sp,
      );
    }
  }
}
