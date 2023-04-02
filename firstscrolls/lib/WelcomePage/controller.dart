import 'package:firstscrolls/WelcomePage/state.dart';
// import 'package:firstscrolls/routes/names.dart';
// import 'package:firstscrolls/some_helpers/config.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();
  WelcomeController();
  changePage(int index) async {
    state.index.value = index;
  }

  // handleSignIn() async {
  //   await ConfigStore.saveAlreadyOpen();
  //   Get.offAndToNamed(AppRoutes.SIGN_IN);
  // }
}
