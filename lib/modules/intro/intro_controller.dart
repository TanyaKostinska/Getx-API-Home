import 'package:get/get.dart';
import 'package:getx_api/modules/home/home_binding.dart';
import 'package:getx_api/modules/home/home_screen.dart';

class IntroController extends GetxController {
  final RxInt number = 0.obs;

  @override
  void onInit(){
    super.onInit();
    nextPage();
  }

  void nextPage() {
    Future.delayed(const Duration(seconds: 2)).then(
      (value) => Get.to(
        () => const HomeScreen(),
        binding: HomeBinding()
      ),
    );
  }
}
