import 'package:get/get.dart';
import 'package:my_lottie_anim/app/modules/home/views/loading_dailog.dart';

class HomeController extends GetxController {

    void showDialog() {
    showLoadingDialog();
    Future.delayed(Duration(seconds: 3), () {
      dismissLoadingDialog();
    });
  }
}
