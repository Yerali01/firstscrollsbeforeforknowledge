import 'package:firstscrolls/some_helpers/storage.dart';
import 'package:firstscrolls/some_helpers/storage_keys.dart';
import 'package:get/get.dart';

class ConfigStore extends GetxController {
  //static ConfigStore get to => Get.find();
  //Get.lazyPut(() {ConfigStore()});
  //Get.put(ConfigStore());

  bool isFirstOpen = false;
  // PackageInfo? _platform;
  String get version => '-'; // _platform?.version ?? '-';
  bool get isRelease => const bool.fromEnvironment("dart.vm.product");

  @override
  void onInit() {
    super.onInit();
    isFirstOpen = StorageService.to.getBool(STORAGE_DEVICE_FIRST_OPEN_KEY);
  }

  // Future<void> getPlatform() async {
  //   _platform = await PackageInfo.fromPlatform();
  // }

  Future<bool> saveAlreadyOpen() {
    return StorageService.to.setBool(STORAGE_DEVICE_FIRST_OPEN_KEY, true);
  }
}
