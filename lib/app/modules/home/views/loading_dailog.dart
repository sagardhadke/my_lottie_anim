import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

void showLoadingDialog() {
  Get.dialog(
    Center(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              'assets/loading.json',
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
            // SizedBox(height: 20),
            // Text('Loading, please wait...'),
          ],
        ),
      ),
    ),
    barrierDismissible: false,
  );
}

void dismissLoadingDialog() {
  if (Get.isDialogOpen!) {
    Get.back();
  }
}
